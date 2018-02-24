#include <jni.h>
#include <stdio.h>
#include <stdlib.h>

#include "stacktrace.h"

static jsize str_length_safe(JNIEnv *env, jstring str)
{
    return str ? (*env)->GetStringUTFLength(env, str) : 0;
}

static char* copy_str_safe(JNIEnv* env, jstring str, const jsize len, char* p)
{
    if (str && len)
    {
        (*env)->GetStringUTFRegion(env, str, 0, len, p);
        p += len;
    }
    *p++ = 0;

    return p;
}

// Errors
static char ERR_INTERNAL[] = "Internal error";
static char ERR_OUT_OF_MEMORY[] = "Out of Memory";

struct stack_trace* java_stacktrace(JNIEnv* env, struct stack_trace_error *ste)
{
#   define ERR(MSG) \
    do \
    { \
        if (ste) \
        { \
            ste->msg = (MSG); \
            ste->file_name = __FILE__; \
            ste->line_number = __LINE__; \
        } \
        return NULL; \
    } \
    while(0)

#   define CHECK(COND, MSG) if (!(COND)) ERR(MSG)

    // TODO: jmethodID could be stored for later use
    // TODO: JNIEnv can be stored per thread

    jclass cls = (*env)->FindClass(env, "java/lang/Thread");
    CHECK(cls, ERR_INTERNAL);

    jmethodID mid = (*env)->GetStaticMethodID(env, cls, "currentThread", "()Ljava/lang/Thread;");
    CHECK(mid, ERR_INTERNAL);
    
    jobject current_thread = (*env)->CallStaticObjectMethod(env, cls, mid);
    CHECK(current_thread, ERR_INTERNAL);

    jmethodID get_stack_trace_mid = (*env)->GetMethodID(env, cls, "getStackTrace", "()[Ljava/lang/StackTraceElement;");
    CHECK(get_stack_trace_mid, ERR_INTERNAL);
    
    jobjectArray stack_trace = (*env)->CallObjectMethod(env, current_thread, get_stack_trace_mid);
    CHECK(stack_trace, ERR_INTERNAL);

    const jsize len = (*env)->GetArrayLength(env, stack_trace);

    jclass stack_trace_elelemnt_cls = (*env)->FindClass(env, "java/lang/StackTraceElement");
    CHECK(stack_trace_elelemnt_cls, ERR_INTERNAL);

    jmethodID get_file_name_mid = (*env)->GetMethodID(env, stack_trace_elelemnt_cls, "getFileName", "()Ljava/lang/String;");
    CHECK(get_file_name_mid, ERR_INTERNAL);

    jmethodID get_class_name_mid = (*env)->GetMethodID(env, stack_trace_elelemnt_cls, "getClassName", "()Ljava/lang/String;");
    CHECK(get_class_name_mid, ERR_INTERNAL);

    jmethodID get_method_name_mid = (*env)->GetMethodID(env, stack_trace_elelemnt_cls, "getMethodName", "()Ljava/lang/String;");
    CHECK(get_method_name_mid, ERR_INTERNAL);

    jmethodID get_line_number_mid = (*env)->GetMethodID(env, stack_trace_elelemnt_cls, "getLineNumber", "()I");
    CHECK(get_line_number_mid, ERR_INTERNAL);

    jmethodID is_native_method_mid = (*env)->GetMethodID(env, stack_trace_elelemnt_cls, "isNativeMethod", "()Z");
    CHECK(is_native_method_mid, ERR_INTERNAL);

    jstring file_names[len];
    jsize file_names_lens[len];
    jstring class_names[len];
    jsize class_names_lens[len];
    jstring method_names[len];
    jsize method_names_lens[len];
    jint line_numbers[len];
    jboolean is_native_methods[len];

    size_t total_len = sizeof(struct stack_trace) + len*sizeof(struct stack_frame);
    for (jsize i = 0; i < len; ++i)
    {
        jobject elem_obj = (*env)->GetObjectArrayElement(env, stack_trace, i);
        file_names[i] = (*env)->CallObjectMethod(env, elem_obj, get_file_name_mid);
        class_names[i] = (*env)->CallObjectMethod(env, elem_obj, get_class_name_mid);
        method_names[i] = (*env)->CallObjectMethod(env, elem_obj, get_method_name_mid);
        line_numbers[i] = (*env)->CallIntMethod(env, elem_obj, get_line_number_mid);
        is_native_methods[i] = (*env)->CallBooleanMethod(env, elem_obj, is_native_method_mid);

        total_len += (file_names_lens[i] = str_length_safe(env, file_names[i])) + 1;
        total_len += (class_names_lens[i] = str_length_safe(env, class_names[i])) + 1;
        total_len += (method_names_lens[i] = str_length_safe(env, method_names[i])) + 1;
    }

    struct stack_trace *st = malloc(total_len);
    CHECK(st, ERR_OUT_OF_MEMORY);
    st->len = len;
    struct stack_frame* frames = st->frames;
    char* p = (char*)&frames[len];
    for (jsize i = 0; i < len; ++i)
    {
        frames[i].file_name = p;
        p = copy_str_safe(env, file_names[i], file_names_lens[i], p);

        frames[i].class_name = p;
        p = copy_str_safe(env, class_names[i], class_names_lens[i], p);

        frames[i].method_name = p;
        p = copy_str_safe(env, method_names[i], method_names_lens[i], p);

        frames[i].line_number = is_native_methods[i] ? -1 : line_numbers[i];
        frames[i].is_native = is_native_methods[i];
    }

    return st;

#undef CHECK
#undef ERR
}
#if 0
// Experiments, could work but are unnecesserally complicated.
jobject java_stacktrace0(JNIEnv* env)
{
    {
    jclass cls = (*env)->FindClass(env, "java/lang/Thread");
    fprintf(stderr, "XYZ:cls: %p\n", cls);
    jmethodID mid = (*env)->GetStaticMethodID(env, cls, "currentThread", "()Ljava/lang/Thread;");
    fprintf(stderr, "XYZ:mid: %p\n", mid);

    jobject current_thread = (*env)->CallStaticObjectMethod(env, cls, mid);
    fprintf(stderr, "XYZ:current_thread: %p\n", current_thread);
    jmethodID get_stack_trace_mid = (*env)->GetMethodID(env, cls, "getStackTrace", "()[Ljava/lang/StackTraceElement;");
    fprintf(stderr, "XYZ:get_stack_trace_mid: %p\n", get_stack_trace_mid);
    jobject stack_trace = (*env)->CallObjectMethod(env, current_thread, get_stack_trace_mid);
    fprintf(stderr, "XYZ:stack_trace is: %p\n", stack_trace);
    return stack_trace;
    }
/*
    jclass cls = (*env)->FindClass(env, "Orig");
    fprintf(stderr, "XYZ:cls: %p\n", cls);
    jmethodID mid = (*env)->GetStaticMethodID(env, cls, "stackTrace", "()[Ljava/lang/StackTraceElement;");
    fprintf(stderr, "XYZ:mid: %p\n", mid);

    jobject stack_trace = (*env)->CallStaticObjectMethod(env, cls, mid);
    fprintf(stderr, "XYZ:stack_trace: %p\n", stack_trace);
    return stack_trace;
    */
}

jobject java_all_stacktraces(JNIEnv* env)
{
    jclass cls = (*env)->FindClass(env, "java/lang/Thread");
    fprintf(stderr, "XYZ:cls: %p\n", cls);
    jmethodID mid = (*env)->GetStaticMethodID(env, cls, "getAllStackTraces", "()Ljava/util/Map;");
    fprintf(stderr, "XYZ:mid: %p\n", mid);

    jobject stack_traces = (*env)->CallStaticObjectMethod(env, cls, mid);
    fprintf(stderr, "XYZ:stack_traces: %p\n", stack_traces);

    return stack_traces;
}

jobject java_stacktrace2(JNIEnv* env)
{
    jclass cls = (*env)->FindClass(env, "java/lang/Exception");
    fprintf(stderr, "XYZ:cls: %p\n", cls);

    jmethodID constructor_mid = (*env)->GetMethodID(env, cls, "<init>", "()V");
    fprintf(stderr, "XYZ:constructor_mid: %p\n", constructor_mid);

    jobject exception = (*env)->NewObject(env, cls, constructor_mid);
    fprintf(stderr, "XYZ:exception: %p\n", exception);

    jmethodID get_stack_trace_mid = (*env)->GetMethodID(env, cls, "getStackTrace", "()[Ljava/lang/StackTraceElement;");
    fprintf(stderr, "XYZ:get_stack_trace_mid: %p\n", get_stack_trace_mid);

    jobject stack_trace = (*env)->CallObjectMethod(env, cls, get_stack_trace_mid);
    fprintf(stderr, "XYZ:stack_trace: %p\n", stack_trace);

    return stack_trace;
}

jobject java_stacktrace3(JNIEnv* env)
{
    jclass cls = (*env)->FindClass(env, "java/lang/Exception");
    fprintf(stderr, "XYZ:cls: %p\n", cls);

    (*env)->ThrowNew(env, cls, "Occured from C code");

    jthrowable exc = (*env)->ExceptionOccurred(env);
    fprintf(stderr, "XYZ:exc: %p\n", exc);
    (*env)->ExceptionDescribe(env);

    (*env)->ExceptionClear(env);

    jmethodID get_stack_trace_mid = (*env)->GetMethodID(env, cls, "getStackTrace", "()[Ljava/lang/StackTraceElement;");
    fprintf(stderr, "XYZ:get_stack_trace_mid: %p\n", get_stack_trace_mid);

    jobject stack_trace = (*env)->CallObjectMethod(env, cls, get_stack_trace_mid);
    fprintf(stderr, "XYZ:stack_trace: %p\n", stack_trace);

    return stack_trace;
}

jobject java_stacktrace4(JNIEnv* env)
{
    {
        jclass cls = (*env)->FindClass(env, "Orig");
        fprintf(stderr, "XYZ:cls: %p\n", cls);

        jmethodID mid = (*env)->GetStaticMethodID(env, cls, "exception", "()V");
        fprintf(stderr, "XYZ:mid: %p\n", mid);

        (*env)->CallStaticVoidMethod(env, cls, mid);
    }

    {
        jthrowable exc = (*env)->ExceptionOccurred(env);
        fprintf(stderr, "XYZ:exc: %p\n", exc);

        (*env)->ExceptionClear(env);

        jclass cls = (*env)->FindClass(env, "java/lang/Throwable");
        fprintf(stderr, "XYZ:cls: %p\n", cls);

        jmethodID print_stack_trace_mid = (*env)->GetMethodID(env, cls, "printStackTrace", "()V");
        fprintf(stderr, "XYZ:print_stack_trace_mid: %p\n", print_stack_trace_mid);

        (*env)->CallVoidMethod(env, exc, print_stack_trace_mid);

        jmethodID get_stack_trace_mid = (*env)->GetMethodID(env, cls, "getStackTrace", "()[Ljava/lang/StackTraceElement;");
        fprintf(stderr, "XYZ:get_stack_trace_mid: %p\n", get_stack_trace_mid);

        jobject stack_trace = (*env)->CallObjectMethod(env, exc, get_stack_trace_mid);
        fprintf(stderr, "XYZ:stack_trace: %p\n", stack_trace);

        return stack_trace;
    }

}
#endif

JNIEXPORT void JNICALL Java_TestJNI_runStacktrace(JNIEnv* env, jobject obj)
{
    (void)obj;

    struct stack_trace_error ste;
    struct stack_trace* st = java_stacktrace(env, &ste);

    if (!st)
    {
        fprintf(stderr, "Cannot obtain stacktrace through JNI: %s (%s:%d)\n", ste.msg, ste.file_name, ste.line_number);
        return;
    }

    for (size_t i = 0; i < st->len; ++i)
    {
        struct stack_frame* f = &st->frames[i];
        fprintf(stderr, "XYZ: f: %s:%d%s %s::%s\n", f->file_name, f->line_number, f->is_native ? "(native)" : "", f->class_name, f->method_name);
    }

    free(st);
}

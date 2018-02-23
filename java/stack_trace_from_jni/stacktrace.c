#include <jni.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

struct stack_frame
{
    const char* file_name;
    const char* class_name;
    const char* method_name;
    unsigned line_number;
    bool is_native;
};

struct stack_trace
{
    size_t len;
    struct stack_frame frames[];
};

static char* copy_str(JNIEnv* env, jstring str, const jsize len, char* p)
{
        (*env)->GetStringUTFRegion(env, str, 0, len, p);
        p += len;
        *p++ = 0;

        return p;
}

jobject java_stacktrace(JNIEnv* env)
{
    jclass cls = (*env)->FindClass(env, "java/lang/Thread");
    fprintf(stderr, "XYZ:cls: %p\n", cls);
    jmethodID mid = (*env)->GetStaticMethodID(env, cls, "currentThread", "()Ljava/lang/Thread;");
    fprintf(stderr, "XYZ:mid: %p\n", mid);
    
    jobject current_thread = (*env)->CallStaticObjectMethod(env, cls, mid);
    fprintf(stderr, "XYZ:current_thread: %p\n", current_thread);
    jmethodID get_stack_trace_mid = (*env)->GetMethodID(env, cls, "getStackTrace", "()[Ljava/lang/StackTraceElement;");
    fprintf(stderr, "XYZ:get_stack_trace_mid: %p\n", get_stack_trace_mid);
    jobjectArray stack_trace = (*env)->CallObjectMethod(env, current_thread, get_stack_trace_mid);
    fprintf(stderr, "XYZ:stack_trace is: %p\n", stack_trace);

    const jsize len = (*env)->GetArrayLength(env, stack_trace);
    fprintf(stderr, "XYZ: array-length: %zu\n", len);

    jclass stack_trace_elelemnt_cls = (*env)->FindClass(env, "java/lang/StackTraceElement");
    fprintf(stderr, "XYZ:cls: %p\n", cls);

    jmethodID get_file_name_mid = (*env)->GetMethodID(env, stack_trace_elelemnt_cls, "getFileName", "()Ljava/lang/String;");
    fprintf(stderr, "XYZ: get_file_name_mid: %p\n", get_file_name_mid);

    jmethodID get_class_name_mid = (*env)->GetMethodID(env, stack_trace_elelemnt_cls, "getClassName", "()Ljava/lang/String;");
    fprintf(stderr, "XYZ: get_class_name_mid: %p\n", get_class_name_mid);

    jmethodID get_method_name_mid = (*env)->GetMethodID(env, stack_trace_elelemnt_cls, "getMethodName", "()Ljava/lang/String;");
    fprintf(stderr, "XYZ: get_method_name_mid: %p\n", get_method_name_mid);

    jmethodID get_line_number_mid = (*env)->GetMethodID(env, stack_trace_elelemnt_cls, "getLineNumber", "()I");
    fprintf(stderr, "XYZ: get_line_number_mid: %p\n", get_line_number_mid);

    jmethodID is_native_method_mid = (*env)->GetMethodID(env, stack_trace_elelemnt_cls, "isNativeMethod", "()Z");
    fprintf(stderr, "XYZ: is_native_method_mid: %p\n", is_native_method_mid);

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

        total_len += (file_names_lens[i] = (*env)->GetStringUTFLength(env, file_names[i])) + 1;
        total_len += (class_names_lens[i] = (*env)->GetStringUTFLength(env, class_names[i])) + 1;
        total_len += (method_names_lens[i] = (*env)->GetStringUTFLength(env, method_names[i])) + 1;
    }

    struct stack_trace *st = malloc(total_len);
    st->len = len;
    struct stack_frame* frames = st->frames;
    char* p = (char*)&frames[len];
    for (jsize i = 0; i < len; ++i)
    {
        frames[i].file_name = p;
        p = copy_str(env, file_names[i], file_names_lens[i], p);

        frames[i].class_name = p;
        p = copy_str(env, class_names[i], class_names_lens[i], p);

        frames[i].method_name = p;
        p = copy_str(env, method_names[i], method_names_lens[i], p);

        frames[i].line_number = is_native_methods[i] ? ~0U : line_numbers[i];
        frames[i].is_native = is_native_methods[i];
    }

    fprintf(stderr, "XYZ: total len: %zu\n", (size_t)total_len);

    for (size_t i = 0; i < st->len; ++i)
    {
        struct stack_frame* f = &st->frames[i];
        fprintf(stderr, "XYZ: f: %s:%u %s::%s\n", f->file_name, f->line_number, f->class_name, f->method_name);
    }

    return stack_trace;
}

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

JNIEXPORT jobject JNICALL Java_TestJNI_runStacktrace(JNIEnv* env, jobject obj)
{
    (void)obj;
    return java_stacktrace(env);
}

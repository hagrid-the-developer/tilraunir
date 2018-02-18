#include <jni.h>
#include <stdio.h>

jobject java_stacktrace(JNIEnv* env)
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
    jobject stack_trace = (*env)->CallObjectMethod(env, cls, get_stack_trace_mid);
    fprintf(stderr, "XYZ:stack_trace: %p\n", stack_trace);
    //XYZ: Release used objects...
    }

    jclass cls = (*env)->FindClass(env, "Orig");
    fprintf(stderr, "XYZ:cls: %p\n", cls);
    jmethodID mid = (*env)->GetStaticMethodID(env, cls, "stackTrace", "()[Ljava/lang/StackTraceElement;");
    fprintf(stderr, "XYZ:mid: %p\n", mid);

    jobject stack_trace = (*env)->CallStaticObjectMethod(env, cls, mid);
    fprintf(stderr, "XYZ:stack_trace: %p\n", stack_trace);
    return stack_trace;
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

JNIEXPORT jobject JNICALL Java_TestJNI_runStacktrace(JNIEnv* env, jobject obj)
{
    (void)obj;
    return java_stacktrace(env);
}

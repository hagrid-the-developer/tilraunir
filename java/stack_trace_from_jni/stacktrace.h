#pragma once

#include <stdbool.h>

struct stack_frame
{
    const char* file_name;
    const char* class_name;
    const char* method_name;
    int line_number;
    bool is_native;
};

struct stack_trace
{
    size_t len;
    struct stack_frame frames[];
};

struct stack_trace_error
{
    const char *msg;
    const char* file_name;
    int line_number;
};

/**
 * @param env -- JNI environment
 * @param ste -- Is used to report details about error if it occurs.
 *               Can be NULL -- details are not reported.
 *
 * @return Pointer to array of `struct stack_trace` that describes actual
 *         Java stacktrace. Can be NULL -- if stacktrace cannot be obtained,
 *         ste is changed to describe the error in such case.
 *         It is user responsibility to release memory allocated with this
 *         function. Since all memory is allocated with one malloc(.)
 *         one should simply call free(.) over the returned pointer:
 *
 *         struct stack_trace* st = java_stacktrace(...);
 *         ...
 *         free(st);
 */
struct stack_trace* java_stacktrace(JNIEnv* env, struct stack_trace_error *ste);

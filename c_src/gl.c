// This file is generated. Do not edit!

#include <string.h>
#include <stdio.h>
#include <pthread.h>
#include <dlfcn.h>
#include <erl_nif.h>
#include <EGL/egl.h>
#include <GL/gl.h>

static void* egl_nif_lib_handle = NULL;
typedef ERL_NIF_TERM (*execute_command_fn)(
    ERL_NIF_TERM (*function)(ErlNifEnv*, int, const ERL_NIF_TERM[]),
    ErlNifEnv*,
    int,
    ERL_NIF_TERM* []
);
execute_command_fn egl_nif_execute_command = NULL;

static int nif_module_load(ErlNifEnv *env, void **priv_data, ERL_NIF_TERM arg)
{
    egl_nif_lib_handle = dlopen("/home/intjelic/Workspace/erlangsters/opengl-pilot/_checkouts/egl/priv/beam-egl.so", RTLD_LAZY);
    if (!egl_nif_lib_handle) {
        fprintf(stderr, "failed to load beam-egl.so: %s\n", dlerror());
        return -1;
    }

    egl_nif_execute_command = dlsym(egl_nif_lib_handle, "egl_execute_command");
    if (!egl_nif_execute_command) {
        fprintf(stderr, "failed to load symbol egl_execute_command: %s\n", dlerror());
        dlclose(egl_nif_lib_handle);
        return -1;
    }

    return 0;
}

static int nif_module_unload(ErlNifEnv* caller_env, void** priv_data)
{
    return 0;
}
ERL_NIF_TERM gl_bool_to_erl_boolean(ErlNifEnv* env, GLboolean val) {
    // return enif_make_atom(env, "tmp");
    return enif_make_atom(env, val == GL_TRUE ? "true" : "false");
}

static ERL_NIF_TERM nif_glDisable_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glDisable(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDisable(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisable_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLenum arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLenum arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glTexSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexSubImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindRenderbuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindRenderbuffer(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindRenderbuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glEnableVertexAttribArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glEnableVertexAttribArray(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glEnableVertexAttribArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEnableVertexAttribArray_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glClearStencil_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLint arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glClearStencil(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glClearStencil(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearStencil_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetProgramInfoLog_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_size;
    if (!enif_get_uint(env, argv[1], &arg_1_size)) {
        return enif_make_badarg(env);
    }

    ErlNifBinary arg_1_bin;
    if (!enif_alloc_binary(arg_1_size, &arg_1_bin)) {
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_1_length = 0;


    glGetProgramInfoLog(arg_0, (GLsizei)arg_1_size, arg_1_length, (GLchar*)arg_1_bin.data);

    if (arg_1_length <= 0) {
        enif_release_binary(&arg_1_bin);
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "no_source_available")
        );
    }
    if ((GLsizei)arg_1_bin.size > arg_1_length) {
        if (!enif_realloc_binary(&arg_1_bin, arg_1_length)) {
            enif_release_binary(&arg_1_bin);
            return enif_make_tuple2(env, 
                enif_make_atom(env, "error"),
                enif_make_atom(env, "realloc_failed")
            );
        }
    }
    ERL_NIF_TERM arg_1_result = enif_make_binary(env, &arg_1_bin);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetProgramInfoLog(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramInfoLog_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilOp_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }

    glStencilOp(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilOp(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilOp_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsRenderbuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsRenderbuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsRenderbuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetShaderiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_n;
    enif_get_uint(env, argv[2], &arg_2_n);
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetShaderiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetShaderiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderiv_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFlush_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glFlush();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFlush(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFlush_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    GLuint ret = glCreateShader(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glCreateShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexAttribPointer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    unsigned int arg_5;
    if (!enif_get_uint(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }


    glVertexAttribPointer(arg_0, arg_1, arg_2, arg_3, arg_4, (GLvoid*)arg_5);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexAttribPointer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribPointer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteFramebuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteFramebuffers(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteFramebuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteFramebuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glPolygonOffset_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;

    glPolygonOffset(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glPolygonOffset(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPolygonOffset_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glStencilMask(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilMask_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDisableVertexAttribArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDisableVertexAttribArray(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDisableVertexAttribArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisableVertexAttribArray_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glLinkProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glLinkProgram(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glLinkProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glLinkProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompileShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glCompileShader(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompileShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompileShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDetachShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glDetachShader(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDetachShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDetachShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompressedTexImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_7;
    if (!enif_inspect_binary(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }

    glCompressedTexImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompressedTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glAttachShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glAttachShader(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glAttachShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glAttachShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenerateMipmap_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glGenerateMipmap(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glGenerateMipmap(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenerateMipmap_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCheckFramebufferStatus_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    GLenum ret = glCheckFramebufferStatus(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_uint(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glCheckFramebufferStatus(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCheckFramebufferStatus_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsProgram(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsShader(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenTextures_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenTextures(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenTextures(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenTextures_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glValidateProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glValidateProgram(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glValidateProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glValidateProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyTexImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLint arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }

    glCopyTexImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilMaskSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glStencilMaskSeparate(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilMaskSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilMaskSeparate_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glScissor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLint arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glScissor(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glScissor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glScissor_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLenum arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLenum arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glTexImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetError_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    GLenum ret = glGetError();

    ERL_NIF_TERM ret_0 = enif_make_uint(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetError(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetError_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindTexture(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindTexture_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDeleteShader(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glStencilFunc(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilFunc_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDrawArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }

    glDrawArrays(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDrawArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawArrays_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFramebufferTexture2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLuint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glFramebufferTexture2D(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFramebufferTexture2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferTexture2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glLineWidth_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;

    glLineWidth(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glLineWidth(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glLineWidth_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDepthMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLboolean arg_0;
    if (enif_compare(argv[0], enif_make_atom(env, "true")) == 0) {
        arg_0 = GL_TRUE;
    } else if (enif_compare(argv[0], enif_make_atom(env, "false")) == 0) {
        arg_0 = GL_FALSE;
    }

    glDepthMask(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDepthMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthMask_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendEquationSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glBlendEquationSeparate(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendEquationSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendEquationSeparate_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glViewport_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLint arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glViewport(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glViewport(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glViewport_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteRenderbuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteRenderbuffers(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteRenderbuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteRenderbuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompressedTexSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLenum arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glCompressedTexSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompressedTexSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexSubImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindBuffer(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindBuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBufferData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizeiptr arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    const void* arg_2 = NULL;
    ErlNifBinary arg_2_bin;
    if (enif_is_identical(argv[2], enif_make_atom(env, "undefined"))) {
        arg_2 = NULL;
    }
    else if (enif_inspect_binary(env, argv[2], &arg_2_bin)) {
        arg_2 = arg_2_bin.data;
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glBufferData(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBufferData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBufferData_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetShaderSource_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_size;
    if (!enif_get_uint(env, argv[1], &arg_1_size)) {
        return enif_make_badarg(env);
    }

    ErlNifBinary arg_1_bin;
    if (!enif_alloc_binary(arg_1_size, &arg_1_bin)) {
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_1_length = 0;


    glGetShaderSource(arg_0, (GLsizei)arg_1_size, arg_1_length, (GLchar*)arg_1_bin.data);

    if (arg_1_length <= 0) {
        enif_release_binary(&arg_1_bin);
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "no_source_available")
        );
    }
    if ((GLsizei)arg_1_bin.size > arg_1_length) {
        if (!enif_realloc_binary(&arg_1_bin, arg_1_length)) {
            enif_release_binary(&arg_1_bin);
            return enif_make_tuple2(env, 
                enif_make_atom(env, "error"),
                enif_make_atom(env, "realloc_failed")
            );
        }
    }
    ERL_NIF_TERM arg_1_result = enif_make_binary(env, &arg_1_bin);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetShaderSource(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderSource_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glSampleCoverage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLboolean arg_1;
    if (enif_compare(argv[1], enif_make_atom(env, "true")) == 0) {
        arg_1 = GL_TRUE;
    } else if (enif_compare(argv[1], enif_make_atom(env, "false")) == 0) {
        arg_1 = GL_FALSE;
    }

    glSampleCoverage(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glSampleCoverage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSampleCoverage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilOpSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glStencilOpSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilOpSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilOpSeparate_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glBlendFunc(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFunc_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glHint_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glHint(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glHint(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glHint_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetBooleanv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_n;
    enif_get_uint(env, argv[1], &arg_1_n);
    GLboolean* arg_1 = enif_alloc(sizeof(GLboolean) * arg_1_n);

    glGetBooleanv(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, gl_bool_to_erl_boolean(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetBooleanv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetBooleanv_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendColor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;

    glBlendColor(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendColor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendColor_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glReleaseShaderCompiler_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glReleaseShaderCompiler();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glReleaseShaderCompiler(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReleaseShaderCompiler_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glShaderSource_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    if (!enif_is_list(env, argv[1])) {
        return enif_make_badarg(env);
    }

    ERL_NIF_TERM arg_1_list = argv[1];
    ERL_NIF_TERM arg_1_head;

    unsigned arg_1_count = 0;
    ERL_NIF_TERM arg_1_tmp_list = arg_1_list;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        if (!enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list)) {
            return enif_make_badarg(env);
        }
        if (!enif_is_binary(env, arg_1_head)) {
            return enif_make_badarg(env);
        }
        arg_1_count++;
    }

    if (arg_1_count == 0) {
        return enif_make_badarg(env);
    }

    const GLchar** arg_1_strings = enif_alloc(sizeof(GLchar*) * arg_1_count);
    GLint* arg_1_lengths = enif_alloc(sizeof(GLint) * arg_1_count);
    ErlNifBinary* arg_1_binaries = enif_alloc(sizeof(ErlNifBinary) * arg_1_count);
    if (!arg_1_strings || !arg_1_lengths || !arg_1_binaries) {
        if (arg_1_strings) enif_free(arg_1_strings);
        if (arg_1_lengths) enif_free(arg_1_lengths);
        if (arg_1_binaries) enif_free(arg_1_binaries);
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    arg_1_tmp_list = arg_1_list;
    unsigned arg_1_i = 0;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list);
        if (!enif_inspect_binary(env, arg_1_head, &arg_1_binaries[arg_1_i])) {
            for (unsigned arg_1_j = 0; arg_1_j < arg_1_i; arg_1_j++) {
                enif_release_binary(&arg_1_binaries[arg_1_j]);
            }
            enif_free(arg_1_strings);
            enif_free(arg_1_lengths);
            enif_free(arg_1_binaries);
            return enif_make_badarg(env);
        }

        arg_1_strings[arg_1_i] = (const GLchar*)arg_1_binaries[arg_1_i].data;
        arg_1_lengths[arg_1_i] = (GLint)arg_1_binaries[arg_1_i].size;
        arg_1_i++;
    }

    glShaderSource(arg_0, (GLsizei)arg_1_count, arg_1_strings, arg_1_lengths);

    for (unsigned arg_1_j = 0; arg_1_j < arg_1_count; arg_1_j++) {
        enif_release_binary(&arg_1_binaries[arg_1_j]);
    }
    enif_free(arg_1_strings);
    enif_free(arg_1_lengths);
    enif_free(arg_1_binaries);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glShaderSource(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glShaderSource_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glClear_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLbitfield arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glClear(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glClear(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClear_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFramebufferRenderbuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLuint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glFramebufferRenderbuffer(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFramebufferRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferRenderbuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyTexSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }

    glCopyTexSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTexSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexSubImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilFuncSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLuint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glStencilFuncSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilFuncSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilFuncSeparate_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetIntegerv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_n;
    enif_get_uint(env, argv[1], &arg_1_n);
    GLint* arg_1 = enif_alloc(sizeof(GLint) * arg_1_n);

    glGetIntegerv(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_int(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetIntegerv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetIntegerv_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenRenderbuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenRenderbuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenRenderbuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenRenderbuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDepthFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glDepthFunc(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDepthFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthFunc_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenFramebuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenFramebuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenFramebuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenFramebuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetFloatv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_n;
    enif_get_uint(env, argv[1], &arg_1_n);
    GLfloat* arg_1 = enif_alloc(sizeof(GLfloat) * arg_1_n);

    glGetFloatv(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_double(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetFloatv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetFloatv_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glColorMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLboolean arg_0;
    if (enif_compare(argv[0], enif_make_atom(env, "true")) == 0) {
        arg_0 = GL_TRUE;
    } else if (enif_compare(argv[0], enif_make_atom(env, "false")) == 0) {
        arg_0 = GL_FALSE;
    }
    GLboolean arg_1;
    if (enif_compare(argv[1], enif_make_atom(env, "true")) == 0) {
        arg_1 = GL_TRUE;
    } else if (enif_compare(argv[1], enif_make_atom(env, "false")) == 0) {
        arg_1 = GL_FALSE;
    }
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    }
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    }

    glColorMask(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glColorMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glColorMask_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsTexture(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsTexture_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsFramebuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsFramebuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFrontFace_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glFrontFace(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFrontFace(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFrontFace_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendEquation_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glBlendEquation(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendEquation(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendEquation_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetString_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    const GLubyte* ret = glGetString(arg_0);

    size_t ret_len = strlen((const char*)ret);
    ErlNifBinary ret_tmp;
    enif_alloc_binary(ret_len, &ret_tmp);
    memcpy(ret_tmp.data, ret, ret_len);
    ERL_NIF_TERM ret_0 = enif_make_binary(env, &ret_tmp);

    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetString(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetString_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetShaderInfoLog_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_size;
    if (!enif_get_uint(env, argv[1], &arg_1_size)) {
        return enif_make_badarg(env);
    }

    ErlNifBinary arg_1_bin;
    if (!enif_alloc_binary(arg_1_size, &arg_1_bin)) {
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_1_length = 0;


    glGetShaderInfoLog(arg_0, (GLsizei)arg_1_size, arg_1_length, (GLchar*)arg_1_bin.data);

    if (arg_1_length <= 0) {
        enif_release_binary(&arg_1_bin);
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "no_source_available")
        );
    }
    if ((GLsizei)arg_1_bin.size > arg_1_length) {
        if (!enif_realloc_binary(&arg_1_bin, arg_1_length)) {
            enif_release_binary(&arg_1_bin);
            return enif_make_tuple2(env, 
                enif_make_atom(env, "error"),
                enif_make_atom(env, "realloc_failed")
            );
        }
    }
    ERL_NIF_TERM arg_1_result = enif_make_binary(env, &arg_1_bin);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetShaderInfoLog(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderInfoLog_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glEnable_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glEnable(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glEnable(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEnable_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsBuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsBuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendFuncSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glBlendFuncSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendFuncSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFuncSeparate_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindFramebuffer(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindFramebuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glClearColor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;

    glClearColor(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glClearColor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearColor_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteTextures_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteTextures(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteTextures(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteTextures_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glRenderbufferStorage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glRenderbufferStorage(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glRenderbufferStorage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glRenderbufferStorage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsEnabled_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    GLboolean ret = glIsEnabled(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsEnabled(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsEnabled_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteBuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteBuffers(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteBuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteBuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenBuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenBuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenBuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenBuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glActiveTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glActiveTexture(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glActiveTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glActiveTexture_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFinish_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glFinish();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFinish(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFinish_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    GLuint ret = glCreateProgram();

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glCreateProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCullFace_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glCullFace(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCullFace(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCullFace_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetProgramiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_n;
    enif_get_uint(env, argv[2], &arg_2_n);
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetProgramiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetProgramiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramiv_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glUseProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glUseProgram(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glUseProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUseProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glReadPixels_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLint arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLenum arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLenum arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    unsigned int arg_6_size;
    enif_get_uint(env, argv[6], &arg_6_size);
    ErlNifBinary arg_6;

    glReadPixels(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6.data);

    ERL_NIF_TERM arg_6_ret = enif_make_binary(env, &arg_6);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_6_ret
    );
}

static ERL_NIF_TERM nif_glReadPixels(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReadPixels_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDeleteProgram(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteProgram_command, env, argc, argv);
}


static ErlNifFunc nif_functions[] = {
    {"glDisable_raw", 1, nif_glDisable},
    {"glTexSubImage2D_raw", 9, nif_glTexSubImage2D},
    {"glBindRenderbuffer_raw", 2, nif_glBindRenderbuffer},
    {"glEnableVertexAttribArray_raw", 1, nif_glEnableVertexAttribArray},
    {"glClearStencil_raw", 1, nif_glClearStencil},
    {"glGetProgramInfoLog_raw", 2, nif_glGetProgramInfoLog},
    {"glStencilOp_raw", 3, nif_glStencilOp},
    {"glIsRenderbuffer_raw", 1, nif_glIsRenderbuffer},
    {"glGetShaderiv_raw", 3, nif_glGetShaderiv},
    {"glFlush_raw", 0, nif_glFlush},
    {"glCreateShader_raw", 1, nif_glCreateShader},
    {"glVertexAttribPointer_raw", 6, nif_glVertexAttribPointer},
    {"glDeleteFramebuffers_raw", 2, nif_glDeleteFramebuffers},
    {"glPolygonOffset_raw", 2, nif_glPolygonOffset},
    {"glStencilMask_raw", 1, nif_glStencilMask},
    {"glDisableVertexAttribArray_raw", 1, nif_glDisableVertexAttribArray},
    {"glLinkProgram_raw", 1, nif_glLinkProgram},
    {"glCompileShader_raw", 1, nif_glCompileShader},
    {"glDetachShader_raw", 2, nif_glDetachShader},
    {"glCompressedTexImage2D_raw", 8, nif_glCompressedTexImage2D},
    {"glAttachShader_raw", 2, nif_glAttachShader},
    {"glGenerateMipmap_raw", 1, nif_glGenerateMipmap},
    {"glCheckFramebufferStatus_raw", 1, nif_glCheckFramebufferStatus},
    {"glIsProgram_raw", 1, nif_glIsProgram},
    {"glIsShader_raw", 1, nif_glIsShader},
    {"glGenTextures_raw", 1, nif_glGenTextures},
    {"glValidateProgram_raw", 1, nif_glValidateProgram},
    {"glCopyTexImage2D_raw", 8, nif_glCopyTexImage2D},
    {"glStencilMaskSeparate_raw", 2, nif_glStencilMaskSeparate},
    {"glScissor_raw", 4, nif_glScissor},
    {"glTexImage2D_raw", 9, nif_glTexImage2D},
    {"glGetError_raw", 0, nif_glGetError},
    {"glBindTexture_raw", 2, nif_glBindTexture},
    {"glDeleteShader_raw", 1, nif_glDeleteShader},
    {"glStencilFunc_raw", 3, nif_glStencilFunc},
    {"glDrawArrays_raw", 3, nif_glDrawArrays},
    {"glFramebufferTexture2D_raw", 5, nif_glFramebufferTexture2D},
    {"glLineWidth_raw", 1, nif_glLineWidth},
    {"glDepthMask_raw", 1, nif_glDepthMask},
    {"glBlendEquationSeparate_raw", 2, nif_glBlendEquationSeparate},
    {"glViewport_raw", 4, nif_glViewport},
    {"glDeleteRenderbuffers_raw", 2, nif_glDeleteRenderbuffers},
    {"glCompressedTexSubImage2D_raw", 9, nif_glCompressedTexSubImage2D},
    {"glBindBuffer_raw", 2, nif_glBindBuffer},
    {"glBufferData_raw", 4, nif_glBufferData},
    {"glGetShaderSource_raw", 2, nif_glGetShaderSource},
    {"glSampleCoverage_raw", 2, nif_glSampleCoverage},
    {"glStencilOpSeparate_raw", 4, nif_glStencilOpSeparate},
    {"glBlendFunc_raw", 2, nif_glBlendFunc},
    {"glHint_raw", 2, nif_glHint},
    {"glGetBooleanv_raw", 2, nif_glGetBooleanv},
    {"glBlendColor_raw", 4, nif_glBlendColor},
    {"glReleaseShaderCompiler_raw", 0, nif_glReleaseShaderCompiler},
    {"glShaderSource_raw", 2, nif_glShaderSource},
    {"glClear_raw", 1, nif_glClear},
    {"glFramebufferRenderbuffer_raw", 4, nif_glFramebufferRenderbuffer},
    {"glCopyTexSubImage2D_raw", 8, nif_glCopyTexSubImage2D},
    {"glStencilFuncSeparate_raw", 4, nif_glStencilFuncSeparate},
    {"glGetIntegerv_raw", 2, nif_glGetIntegerv},
    {"glGenRenderbuffers_raw", 1, nif_glGenRenderbuffers},
    {"glDepthFunc_raw", 1, nif_glDepthFunc},
    {"glGenFramebuffers_raw", 1, nif_glGenFramebuffers},
    {"glGetFloatv_raw", 2, nif_glGetFloatv},
    {"glColorMask_raw", 4, nif_glColorMask},
    {"glIsTexture_raw", 1, nif_glIsTexture},
    {"glIsFramebuffer_raw", 1, nif_glIsFramebuffer},
    {"glFrontFace_raw", 1, nif_glFrontFace},
    {"glBlendEquation_raw", 1, nif_glBlendEquation},
    {"glGetString_raw", 1, nif_glGetString},
    {"glGetShaderInfoLog_raw", 2, nif_glGetShaderInfoLog},
    {"glEnable_raw", 1, nif_glEnable},
    {"glIsBuffer_raw", 1, nif_glIsBuffer},
    {"glBlendFuncSeparate_raw", 4, nif_glBlendFuncSeparate},
    {"glBindFramebuffer_raw", 2, nif_glBindFramebuffer},
    {"glClearColor_raw", 4, nif_glClearColor},
    {"glDeleteTextures_raw", 2, nif_glDeleteTextures},
    {"glRenderbufferStorage_raw", 4, nif_glRenderbufferStorage},
    {"glIsEnabled_raw", 1, nif_glIsEnabled},
    {"glDeleteBuffers_raw", 2, nif_glDeleteBuffers},
    {"glGenBuffers_raw", 1, nif_glGenBuffers},
    {"glActiveTexture_raw", 1, nif_glActiveTexture},
    {"glFinish_raw", 0, nif_glFinish},
    {"glCreateProgram_raw", 0, nif_glCreateProgram},
    {"glCullFace_raw", 1, nif_glCullFace},
    {"glGetProgramiv_raw", 3, nif_glGetProgramiv},
    {"glUseProgram_raw", 1, nif_glUseProgram},
    {"glReadPixels_raw", 7, nif_glReadPixels},
    {"glDeleteProgram_raw", 1, nif_glDeleteProgram}
};

ERL_NIF_INIT(
    gl,
    nif_functions,
    nif_module_load,
    NULL,
    NULL,
    nif_module_unload
);

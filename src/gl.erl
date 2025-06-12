%% This file is generated. Do not edit!
-module(gl).
-moduledoc """
OpenGL ES 2.0 binding.

It implements the API of OpenGL ES 2.0, adjusted for BEAM (Erlang language).

blabla...
Knowledge of the EGL API in C is assumed, as this module is a direct binding to
the C API. xXxx

XXX: To be written.

Another source of reference is the OpenGL samples project that provides working
C samples with their counterparts in Erlang (and later Elixir).
Repo: [OpenGL Samples](https://github.com/erlangsters/opengl-samples).

Another source of reference is the
[test suites](https://github.com/erlangsters/egl-1.5/tree/master/test)
""".

% Low-level OpenGL types.
-export_type([scalar/1]).
-export_type([vector1/1, vector2/1, vector3/1, vector4/1]).
-export_type([matrix2/1, matrix3/1, matrix4/1]).
-export_type([matrix2x3/1, matrix3x2/1]).
-export_type([matrix2x4/1, matrix4x2/1]).
-export_type([matrix3x4/1, matrix4x3/1]).


-export_type([enum/0]).
-export_type([bitfield/0]).

% High-level OpenGL types.
-export_type([shader/0]).
-export_type([program/0]).
-export_type([buffer/0]).
-export_type([render_buffer/0]).
-export_type([frame_buffer/0]).
-export_type([texture/0]).

% The OpenGL enum types.
-export_type([blend_equation_mode_e_x_t/0]).
-export_type([blending_factor/0]).
-export_type([buffer_target_a_r_b/0]).
-export_type([buffer_usage_a_r_b/0]).
-export_type([depth_function/0]).
-export_type([enable_cap/0]).
-export_type([error_code/0]).
-export_type([framebuffer_attachment/0]).
-export_type([framebuffer_status/0]).
-export_type([framebuffer_target/0]).
-export_type([front_face_direction/0]).
-export_type([get_p_name/0]).
-export_type([hint_mode/0]).
-export_type([hint_target/0]).
-export_type([internal_format/0]).
-export_type([pixel_format/0]).
-export_type([pixel_type/0]).
-export_type([primitive_type/0]).
-export_type([program_property_a_r_b/0]).
-export_type([renderbuffer_target/0]).
-export_type([shader_parameter_name/0]).
-export_type([shader_type/0]).
-export_type([stencil_function/0]).
-export_type([stencil_op/0]).
-export_type([string_name/0]).
-export_type([texture_target/0]).
-export_type([texture_unit/0]).
-export_type([triangle_face/0]).
-export_type([vertex_attrib_pointer_type/0]).

% The OpenGL bitfield types.
-export_type([clear_buffer_mask/0]).

-export([disable/1]).
-export([tex_sub_image_2d/9]).
-export([bind_render_buffer/2]).
-export([enable_vertex_attrib_array/1]).
-export([clear_stencil/1]).
-export([get_program_info_log/2]).
-export([stencil_op/3]).
-export([is_renderbuffer/1]).
-export([get_shader_iv/3]).
-export([flush/0]).
-export([create_shader/1]).
-export([vertex_attrib_pointer/6]).
-export([delete_framebuffers/2]).
-export([polygon_offset/2]).
-export([stencil_mask/1]).
-export([disable_vertex_attrib_array/1]).
-export([link_program/1]).
-export([compile_shader/1]).
-export([detach_shader/2]).
-export([compressed_tex_image_2d/8]).
-export([attach_shader/2]).
-export([generate_mipmap/1]).
-export([check_framebuffer_status/1]).
-export([is_program/1]).
-export([is_shader/1]).
-export([gen_textures/1]).
-export([validate_program/1]).
-export([copy_tex_image_2d/8]).
-export([stencil_mask_separate/2]).
-export([scissor/4]).
-export([tex_image_2d/9]).
-export([get_error/0]).
-export([bind_texture/2]).
-export([delete_shader/1]).
-export([stencil_func/3]).
-export([draw_arrays/3]).
-export([framebuffer_texture_2d/5]).
-export([line_width/1]).
-export([depth_mask/1]).
-export([blend_equation_separate/2]).
-export([viewport/4]).
-export([delete_render_buffers/2]).
-export([compressed_tex_sub_image_2d/9]).
-export([bind_buffer/2]).
-export([buffer_data/4]).
-export([get_shader_source/2]).
-export([sample_coverage/2]).
-export([stencil_op_separate/4]).
-export([blend_func/2]).
-export([hint/2]).
-export([get_boolean/2]).
-export([blend_color/4]).
-export([release_shader_compiler/0]).
-export([shader_source/2]).
-export([clear/1]).
-export([framebuffer_renderbuffer/4]).
-export([copy_tex_sub_image_2d/8]).
-export([stencil_func_separate/4]).
-export([get_integer/2]).
-export([gen_render_buffers/1]).
-export([depth_func/1]).
-export([gen_framebuffers/1]).
-export([get_float/2]).
-export([color_mask/4]).
-export([is_texture/1]).
-export([is_framebuffer/1]).
-export([front_face/1]).
-export([blend_equation/1]).
-export([get_string/1]).
-export([get_shader_info_log/2]).
-export([enable/1]).
-export([is_buffer/1]).
-export([blend_func_separate/4]).
-export([bind_framebuffer/2]).
-export([clear_color/4]).
-export([delete_textures/2]).
-export([render_buffer_storage/4]).
-export([is_enabled/1]).
-export([delete_buffers/2]).
-export([gen_buffers/1]).
-export([active_texture/1]).
-export([finish/0]).
-export([create_program/0]).
-export([cull_face/1]).
-export([get_program_iv/3]).
-export([use_program/1]).
-export([read_pixels/7]).
-export([delete_program/1]).

-include("../include/gl.hrl").

-doc "to be written.".
-type scalar(Type) :: Type.

-doc "to be written.".
-type vector1(Type) :: {scalar(Type)}.
-doc "to be written.".
-type vector2(Type) :: {scalar(Type), scalar(Type)}.
-doc "to be written.".
-type vector3(Type) :: {scalar(Type), scalar(Type), scalar(Type)}.
-doc "to be written.".
-type vector4(Type) :: {scalar(Type), scalar(Type), scalar(Type), scalar(Type)}.
-doc "to be written.".

-type matrix2(Type) :: {vector2(Type), vector2(Type)}.
-doc "to be written.".
-type matrix3(Type) :: {vector3(Type), vector3(Type), vector3(Type)}.
-doc "to be written.".
-type matrix4(Type) :: {vector4(Type), vector4(Type), vector4(Type), vector4(Type)}.
-doc "to be written.".

-type matrix2x3(Type) :: {vector3(Type), vector3(Type)}.
-doc "to be written.".
-type matrix3x2(Type) :: {vector2(Type), vector2(Type), vector2(Type)}.
-doc "to be written.".

-type matrix2x4(Type) :: {vector4(Type), vector4(Type)}.
-doc "to be written.".
-type matrix4x2(Type) :: {vector2(Type), vector2(Type), vector2(Type), vector2(Type)}.
-doc "to be written.".

-type matrix3x4(Type) :: {vector4(Type), vector4(Type), vector4(Type)}.
-doc "to be written.".
-type matrix4x3(Type) :: {vector3(Type), vector3(Type), vector3(Type), vector3(Type)}.


-doc "An OpenGL enum..".
-type enum() :: atom().
-doc "An OpenGL bitfield.".
-type bitfield() :: [atom()].

-doc "An OpenGL shader object.".
-type shader() :: pos_integer().
-doc "An OpenGL program object.".
-type program() :: pos_integer().
-doc "An OpenGL buffer object.".
-type buffer() :: pos_integer().
-doc "An OpenGL render buffer object.".
-type render_buffer() :: pos_integer().
-doc "An OpenGL frame buffer object.".
-type frame_buffer() :: pos_integer().
-doc "An OpenGL texture object.".
-type texture() :: pos_integer().

-doc "The OpenGL `blend_equation_mode_e_x_t` enum.".
-type blend_equation_mode_e_x_t() :: 
    func_add |
    func_subtract |
    func_reverse_subtract
.
-doc "The OpenGL `blending_factor` enum.".
-type blending_factor() :: 
    constant_color |
    one_minus_constant_alpha |
    dst_color |
    one_minus_src_alpha |
    one_minus_dst_color |
    src_color |
    constant_alpha |
    one_minus_constant_color |
    src_alpha_saturate |
    zero |
    one_minus_src_color |
    one_minus_dst_alpha |
    dst_alpha |
    one |
    src_alpha
.
-doc "The OpenGL `buffer_target_a_r_b` enum.".
-type buffer_target_a_r_b() :: 
    array_buffer |
    element_array_buffer
.
-doc "The OpenGL `buffer_usage_a_r_b` enum.".
-type buffer_usage_a_r_b() :: 
    dynamic_draw |
    static_draw |
    stream_draw
.
-doc "The OpenGL `depth_function` enum.".
-type depth_function() :: 
    less |
    notequal |
    greater |
    gequal |
    lequal |
    never |
    always |
    equal
.
-doc "The OpenGL `enable_cap` enum.".
-type enable_cap() :: 
    polygon_offset_fill |
    dither |
    depth_test |
    texture_2d |
    scissor_test |
    cull_face |
    blend |
    stencil_test |
    texture_cube_map |
    sample_coverage |
    sample_alpha_to_coverage
.
-doc "The OpenGL `error_code` enum.".
-type error_code() :: 
    invalid_enum |
    invalid_framebuffer_operation |
    invalid_operation |
    out_of_memory |
    no_error |
    invalid_value
.
-doc "The OpenGL `framebuffer_attachment` enum.".
-type framebuffer_attachment() :: 
    color_attachment0 |
    depth_attachment |
    stencil_attachment
.
-doc "The OpenGL `framebuffer_status` enum.".
-type framebuffer_status() :: 
    framebuffer_incomplete_attachment |
    framebuffer_incomplete_missing_attachment |
    framebuffer_unsupported |
    framebuffer_complete
.
-doc "The OpenGL `framebuffer_target` enum.".
-type framebuffer_target() :: 
    framebuffer
.
-doc "The OpenGL `front_face_direction` enum.".
-type front_face_direction() :: 
    cw |
    ccw
.
-doc "The OpenGL `get_p_name` enum.".
-type get_p_name() :: 
    max_varying_vectors |
    compressed_texture_formats |
    polygon_offset_fill |
    dither |
    stencil_back_func |
    stencil_pass_depth_pass |
    blend_equation_rgb |
    depth_func |
    depth_test |
    color_clear_value |
    current_program |
    shader_binary_formats |
    stencil_ref |
    front_face |
    max_vertex_attribs |
    texture_2d |
    stencil_back_writemask |
    cull_face_mode |
    scissor_test |
    max_fragment_uniform_vectors |
    sample_coverage_invert |
    samples |
    element_array_buffer_binding |
    blue_bits |
    max_vertex_uniform_vectors |
    green_bits |
    implementation_color_read_type |
    alpha_bits |
    aliased_line_width_range |
    blend_color |
    blend_equation_alpha |
    stencil_back_pass_depth_fail |
    stencil_back_pass_depth_pass |
    pack_alignment |
    renderbuffer_binding |
    texture_binding_cube_map |
    stencil_pass_depth_fail |
    max_texture_size |
    red_bits |
    cull_face |
    sample_coverage_value |
    max_vertex_texture_image_units |
    array_buffer_binding |
    stencil_writemask |
    scissor_box |
    depth_bits |
    blend_dst_alpha |
    max_viewport_dims |
    num_shader_binary_formats |
    depth_clear_value |
    stencil_back_fail |
    stencil_back_ref |
    max_renderbuffer_size |
    stencil_back_value_mask |
    max_combined_texture_image_units |
    max_texture_image_units |
    blend |
    stencil_value_mask |
    stencil_clear_value |
    color_writemask |
    shader_compiler |
    stencil_test |
    stencil_bits |
    unpack_alignment |
    subpixel_bits |
    depth_range |
    sample_buffers |
    max_cube_map_texture_size |
    polygon_offset_factor |
    depth_writemask |
    blend_src_rgb |
    implementation_color_read_format |
    blend_equation |
    stencil_func |
    texture_binding_2d |
    blend_src_alpha |
    aliased_point_size_range |
    blend_dst_rgb |
    line_width |
    active_texture |
    viewport |
    stencil_fail |
    num_compressed_texture_formats |
    polygon_offset_units
.
-doc "The OpenGL `hint_mode` enum.".
-type hint_mode() :: 
    fastest |
    dont_care |
    nicest
.
-doc "The OpenGL `hint_target` enum.".
-type hint_target() :: 
    generate_mipmap_hint
.
-doc "The OpenGL `internal_format` enum.".
-type internal_format() :: 
    stencil_index8 |
    rgb |
    depth_component16 |
    rgb565 |
    rgba4 |
    depth_component |
    rgb5_a1 |
    rgba
.
-doc "The OpenGL `pixel_format` enum.".
-type pixel_format() :: 
    luminance |
    rgb |
    alpha |
    depth_component |
    luminance_alpha |
    unsigned_int |
    rgba |
    unsigned_short
.
-doc "The OpenGL `pixel_type` enum.".
-type pixel_type() :: 
    unsigned_short_5_6_5 |
    short |
    unsigned_short_5_5_5_1 |
    unsigned_byte |
    float |
    unsigned_short_4_4_4_4 |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `primitive_type` enum.".
-type primitive_type() :: 
    line_loop |
    points |
    triangle_fan |
    lines |
    line_strip |
    triangle_strip |
    triangles
.
-doc "The OpenGL `program_property_a_r_b` enum.".
-type program_property_a_r_b() :: 
    attached_shaders |
    link_status |
    info_log_length |
    validate_status |
    active_uniforms |
    active_attribute_max_length |
    active_attributes |
    delete_status |
    active_uniform_max_length
.
-doc "The OpenGL `renderbuffer_target` enum.".
-type renderbuffer_target() :: 
    renderbuffer
.
-doc "The OpenGL `shader_parameter_name` enum.".
-type shader_parameter_name() :: 
    info_log_length |
    shader_source_length |
    compile_status |
    delete_status |
    shader_type
.
-doc "The OpenGL `shader_type` enum.".
-type shader_type() :: 
    fragment_shader |
    vertex_shader
.
-doc "The OpenGL `stencil_function` enum.".
-type stencil_function() :: 
    less |
    notequal |
    greater |
    gequal |
    lequal |
    never |
    always |
    equal
.
-doc "The OpenGL `stencil_op` enum.".
-type stencil_op() :: 
    incr_wrap |
    incr |
    invert |
    zero |
    decr_wrap |
    keep |
    decr |
    replace
.
-doc "The OpenGL `string_name` enum.".
-type string_name() :: 
    version |
    shading_language_version |
    extensions |
    renderer |
    vendor
.
-doc "The OpenGL `texture_target` enum.".
-type texture_target() :: 
    texture_2d |
    texture_cube_map_negative_z |
    texture_cube_map_positive_x |
    renderbuffer |
    texture_cube_map_negative_y |
    texture_cube_map_positive_y |
    texture_cube_map_negative_x |
    texture_cube_map |
    texture_cube_map_positive_z
.
-doc "The OpenGL `texture_unit` enum.".
-type texture_unit() :: 
    texture19 |
    texture14 |
    texture10 |
    texture2 |
    texture17 |
    texture6 |
    texture8 |
    texture9 |
    texture28 |
    texture23 |
    texture24 |
    texture27 |
    texture21 |
    texture12 |
    texture4 |
    texture16 |
    texture13 |
    texture29 |
    texture3 |
    texture5 |
    texture11 |
    texture18 |
    texture7 |
    texture25 |
    texture26 |
    texture20 |
    texture30 |
    texture15 |
    texture1 |
    texture22 |
    texture0 |
    texture31
.
-doc "The OpenGL `triangle_face` enum.".
-type triangle_face() :: 
    front |
    back |
    front_and_back
.
-doc "The OpenGL `vertex_attrib_pointer_type` enum.".
-type vertex_attrib_pointer_type() :: 
    fixed |
    short |
    unsigned_byte |
    float |
    int |
    unsigned_int |
    unsigned_short |
    byte
.

-doc "The OpenGL `clear_buffer_mask` bitfield.".
-type clear_buffer_mask() :: [
    depth_buffer_bit |
    color_buffer_bit |
    stencil_buffer_bit
].


-nifs([glDisable_raw/1]).
-nifs([glTexSubImage2D_raw/9]).
-nifs([glBindRenderbuffer_raw/2]).
-nifs([glEnableVertexAttribArray_raw/1]).
-nifs([glClearStencil_raw/1]).
-nifs([glGetProgramInfoLog_raw/2]).
-nifs([glStencilOp_raw/3]).
-nifs([glIsRenderbuffer_raw/1]).
-nifs([glGetShaderiv_raw/3]).
-nifs([glFlush_raw/0]).
-nifs([glCreateShader_raw/1]).
-nifs([glVertexAttribPointer_raw/6]).
-nifs([glDeleteFramebuffers_raw/2]).
-nifs([glPolygonOffset_raw/2]).
-nifs([glStencilMask_raw/1]).
-nifs([glDisableVertexAttribArray_raw/1]).
-nifs([glLinkProgram_raw/1]).
-nifs([glCompileShader_raw/1]).
-nifs([glDetachShader_raw/2]).
-nifs([glCompressedTexImage2D_raw/8]).
-nifs([glAttachShader_raw/2]).
-nifs([glGenerateMipmap_raw/1]).
-nifs([glCheckFramebufferStatus_raw/1]).
-nifs([glIsProgram_raw/1]).
-nifs([glIsShader_raw/1]).
-nifs([glGenTextures_raw/1]).
-nifs([glValidateProgram_raw/1]).
-nifs([glCopyTexImage2D_raw/8]).
-nifs([glStencilMaskSeparate_raw/2]).
-nifs([glScissor_raw/4]).
-nifs([glTexImage2D_raw/9]).
-nifs([glGetError_raw/0]).
-nifs([glBindTexture_raw/2]).
-nifs([glDeleteShader_raw/1]).
-nifs([glStencilFunc_raw/3]).
-nifs([glDrawArrays_raw/3]).
-nifs([glFramebufferTexture2D_raw/5]).
-nifs([glLineWidth_raw/1]).
-nifs([glDepthMask_raw/1]).
-nifs([glBlendEquationSeparate_raw/2]).
-nifs([glViewport_raw/4]).
-nifs([glDeleteRenderbuffers_raw/2]).
-nifs([glCompressedTexSubImage2D_raw/9]).
-nifs([glBindBuffer_raw/2]).
-nifs([glBufferData_raw/4]).
-nifs([glGetShaderSource_raw/2]).
-nifs([glSampleCoverage_raw/2]).
-nifs([glStencilOpSeparate_raw/4]).
-nifs([glBlendFunc_raw/2]).
-nifs([glHint_raw/2]).
-nifs([glGetBooleanv_raw/2]).
-nifs([glBlendColor_raw/4]).
-nifs([glReleaseShaderCompiler_raw/0]).
-nifs([glShaderSource_raw/2]).
-nifs([glClear_raw/1]).
-nifs([glFramebufferRenderbuffer_raw/4]).
-nifs([glCopyTexSubImage2D_raw/8]).
-nifs([glStencilFuncSeparate_raw/4]).
-nifs([glGetIntegerv_raw/2]).
-nifs([glGenRenderbuffers_raw/1]).
-nifs([glDepthFunc_raw/1]).
-nifs([glGenFramebuffers_raw/1]).
-nifs([glGetFloatv_raw/2]).
-nifs([glColorMask_raw/4]).
-nifs([glIsTexture_raw/1]).
-nifs([glIsFramebuffer_raw/1]).
-nifs([glFrontFace_raw/1]).
-nifs([glBlendEquation_raw/1]).
-nifs([glGetString_raw/1]).
-nifs([glGetShaderInfoLog_raw/2]).
-nifs([glEnable_raw/1]).
-nifs([glIsBuffer_raw/1]).
-nifs([glBlendFuncSeparate_raw/4]).
-nifs([glBindFramebuffer_raw/2]).
-nifs([glClearColor_raw/4]).
-nifs([glDeleteTextures_raw/2]).
-nifs([glRenderbufferStorage_raw/4]).
-nifs([glIsEnabled_raw/1]).
-nifs([glDeleteBuffers_raw/2]).
-nifs([glGenBuffers_raw/1]).
-nifs([glActiveTexture_raw/1]).
-nifs([glFinish_raw/0]).
-nifs([glCreateProgram_raw/0]).
-nifs([glCullFace_raw/1]).
-nifs([glGetProgramiv_raw/3]).
-nifs([glUseProgram_raw/1]).
-nifs([glReadPixels_raw/7]).
-nifs([glDeleteProgram_raw/1]).

-on_load(init_nif/0).

init_nif() ->
    PrivDir = code:priv_dir(?MODULE),
    NifPath = filename:join(PrivDir, "beam-gl"),
    ok = erlang:load_nif(NifPath, 0).

-doc """
foobar

It implements the `glDisable` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDisable) formore information.
""".
-spec disable(Cap :: enable_cap()) -> ok | {error, atom()}.
disable(Cap) ->
    NewCap = case Cap of
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        blend -> ?GL_BLEND;
        cull_face -> ?GL_CULL_FACE;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glDisable_raw(NewCap).

-doc """
Specify a two-dimensional texture subimage.

It implements the `glTexSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glTexSubImage2D) formore information.
""".
-spec tex_sub_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_sub_image_2d(Target, Level, OffsetX, OffsetY, Width, Height, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        float -> ?GL_FLOAT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        alpha -> ?GL_ALPHA;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d -> ?GL_TEXTURE_2D
    end,

    glTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, Width, Height, NewFormat, NewType, Pixels).

-doc """
Bind a renderbuffer to a renderbuffer target.

It implements the `glBindRenderbuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBindRenderbuffer) formore information.
""".
-spec bind_render_buffer(
    Target :: renderbuffer_target(),
    Buffer :: render_buffer()
) -> ok | {error, atom()}.
bind_render_buffer(Target, Buffer) ->
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    glBindRenderbuffer_raw(NewTarget, Buffer).

-doc """
Enable or disable a generic vertex attribute
    array.

It implements the `glEnableVertexAttribArray` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glEnableVertexAttribArray) formore information.
""".
-spec enable_vertex_attrib_array(Index :: pos_integer()) -> ok | {error, atom()}.
enable_vertex_attrib_array(Index) ->

    glEnableVertexAttribArray_raw(Index).

-doc """
Specify the clear value for the stencil buffer.

It implements the `glClearStencil` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glClearStencil) formore information.
""".
-spec clear_stencil(S :: integer()) -> ok | {error, atom()}.
clear_stencil(S) ->

    glClearStencil_raw(S).

-doc """
Returns the information log for a program object.

It implements the `glGetProgramInfoLog` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramInfoLog) formore information.
""".
-spec get_program_info_log(
    Program :: program(),
    StringSize :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_program_info_log(Program, StringSize) ->

    glGetProgramInfoLog_raw(Program, StringSize).

-doc """
Set front and back stencil test actions.

It implements the `glStencilOp` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilOp) formore information.
""".
-spec stencil_op(
    Fail :: stencil_op(),
    ZFail :: stencil_op(),
    ZPass :: stencil_op()
) -> ok | {error, atom()}.
stencil_op(Fail, ZFail, ZPass) ->
    NewZPass = case ZPass of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewZFail = case ZFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewFail = case Fail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,

    glStencilOp_raw(NewFail, NewZFail, NewZPass).

-doc """
Determine if a name corresponds to a renderbuffer object.

It implements the `glIsRenderbuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsRenderbuffer) formore information.
""".
-spec is_renderbuffer(Buffer :: render_buffer()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_renderbuffer(Buffer) ->

    glIsRenderbuffer_raw(Buffer).

-doc """
undefined

It implements the `glGetShaderiv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetShaderiv) formore information.
""".
-spec get_shader_iv(
    Shader :: shader(),
    PName :: shader_parameter_name(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_shader_iv(Shader, PName, N) ->
    NewPName = case PName of
        shader_type -> ?GL_SHADER_TYPE;
        delete_status -> ?GL_DELETE_STATUS;
        compile_status -> ?GL_COMPILE_STATUS;
        shader_source_length -> ?GL_SHADER_SOURCE_LENGTH;
        info_log_length -> ?GL_INFO_LOG_LENGTH
    end,

    glGetShaderiv_raw(Shader, NewPName, N).

-doc """
Force execution of GL commands in finite time.

It implements the `glFlush` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glFlush) formore information.
""".
-spec flush() -> ok | {error, atom()}.
flush() ->

    glFlush_raw().

-doc """
Creates a shader object.

It implements the `glCreateShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCreateShader) formore information.
""".
-spec create_shader(Type :: shader_type()) -> {ok, NoName :: shader()} | {error, atom()}.
create_shader(Type) ->
    NewType = case Type of
        vertex_shader -> ?GL_VERTEX_SHADER;
        fragment_shader -> ?GL_FRAGMENT_SHADER
    end,

    glCreateShader_raw(NewType).

-doc """
Define an array of generic vertex attribute data.

It implements the `glVertexAttribPointer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glVertexAttribPointer) formore information.
""".
-spec vertex_attrib_pointer(
    Index :: pos_integer(),
    Size :: integer(),
    Type :: vertex_attrib_pointer_type(),
    Normalized :: boolean(),
    Stride :: integer(),
    Pointer :: integer()
) -> ok | {error, atom()}.
vertex_attrib_pointer(Index, Size, Type, Normalized, Stride, Pointer) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        float -> ?GL_FLOAT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        short -> ?GL_SHORT;
        fixed -> ?GL_FIXED
    end,

    glVertexAttribPointer_raw(Index, Size, NewType, Normalized, Stride, Pointer).

-doc """
Delete framebuffer objects.

It implements the `glDeleteFramebuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteFramebuffers) formore information.
""".
-spec delete_framebuffers(
    N :: integer(),
    Buffers :: [frame_buffer()]
) -> ok | {error, atom()}.
delete_framebuffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    glDeleteFramebuffers_raw(N, NewBuffers).

-doc """
Set the scale and units used to calculate depth values.

It implements the `glPolygonOffset` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glPolygonOffset) formore information.
""".
-spec polygon_offset(
    Factor :: float(),
    Units :: float()
) -> ok | {error, atom()}.
polygon_offset(Factor, Units) ->

    glPolygonOffset_raw(Factor, Units).

-doc """
Control the front and back writing of individual bits in the stencil planes.

It implements the `glStencilMask` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilMask) formore information.
""".
-spec stencil_mask(Mask :: pos_integer()) -> ok | {error, atom()}.
stencil_mask(Mask) ->

    glStencilMask_raw(Mask).

-doc """
undefined

It implements the `glDisableVertexAttribArray` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDisableVertexAttribArray) formore information.
""".
-spec disable_vertex_attrib_array(Index :: pos_integer()) -> ok | {error, atom()}.
disable_vertex_attrib_array(Index) ->

    glDisableVertexAttribArray_raw(Index).

-doc """
Links a program object.

It implements the `glLinkProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glLinkProgram) formore information.
""".
-spec link_program(Program :: program()) -> ok | {error, atom()}.
link_program(Program) ->

    glLinkProgram_raw(Program).

-doc """
Compiles a shader object.

It implements the `glCompileShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCompileShader) formore information.
""".
-spec compile_shader(Shader :: shader()) -> ok | {error, atom()}.
compile_shader(Shader) ->

    glCompileShader_raw(Shader).

-doc """
Detaches a shader object from a program object to which it is attached.

It implements the `glDetachShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDetachShader) formore information.
""".
-spec detach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
detach_shader(Program, Shader) ->

    glDetachShader_raw(Program, Shader).

-doc """
Specify a two-dimensional texture image in a compressed format.

It implements the `glCompressedTexImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCompressedTexImage2D) formore information.
""".
-spec compressed_tex_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Border :: integer(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_image_2d(Target, Level, InternalFormat, Width, Height, Border, ImageSize, ImageData) ->
    NewInternalFormat = case InternalFormat of
        rgba -> ?GL_RGBA;
        rgb5_a1 -> ?GL_RGB5_A1;
        depth_component -> ?GL_DEPTH_COMPONENT;
        rgba4 -> ?GL_RGBA4;
        rgb565 -> ?GL_RGB565;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rgb -> ?GL_RGB;
        stencil_index8 -> ?GL_STENCIL_INDEX8
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d -> ?GL_TEXTURE_2D
    end,

    glCompressedTexImage2D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Border, ImageSize, ImageData).

-doc """
Attaches a shader object to a program object.

It implements the `glAttachShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glAttachShader) formore information.
""".
-spec attach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
attach_shader(Program, Shader) ->

    glAttachShader_raw(Program, Shader).

-doc """
Generate mipmaps for a specified texture object.

It implements the `glGenerateMipmap` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGenerateMipmap) formore information.
""".
-spec generate_mipmap(Target :: texture_target()) -> ok | {error, atom()}.
generate_mipmap(Target) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d -> ?GL_TEXTURE_2D
    end,

    glGenerateMipmap_raw(NewTarget).

-doc """
Check the completeness status of a framebuffer.

It implements the `glCheckFramebufferStatus` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCheckFramebufferStatus) formore information.
""".
-spec check_framebuffer_status(Target :: framebuffer_target()) -> {ok, NoName :: framebuffer_status()} | {error, atom()}.
check_framebuffer_status(Target) ->
    NewTarget = case Target of
        framebuffer -> ?GL_FRAMEBUFFER
    end,

    glCheckFramebufferStatus_raw(NewTarget).

-doc """
Determines if a name corresponds to a program object.

It implements the `glIsProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsProgram) formore information.
""".
-spec is_program(Program :: program()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_program(Program) ->

    glIsProgram_raw(Program).

-doc """
Determines if a name corresponds to a shader object.

It implements the `glIsShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsShader) formore information.
""".
-spec is_shader(Shader :: shader()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_shader(Shader) ->

    glIsShader_raw(Shader).

-doc """
Generate texture names.

It implements the `glGenTextures` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGenTextures) formore information.
""".
-spec gen_textures(N :: pos_integer()) -> {ok, Textures :: [texture()]} | {error, atom()}.
gen_textures(N) ->

    glGenTextures_raw(N).

-doc """
Validates a program object.

It implements the `glValidateProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glValidateProgram) formore information.
""".
-spec validate_program(Program :: program()) -> ok | {error, atom()}.
validate_program(Program) ->

    glValidateProgram_raw(Program).

-doc """
Copy pixels into a 2D texture image.

It implements the `glCopyTexImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCopyTexImage2D) formore information.
""".
-spec copy_tex_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer(),
    Border :: integer()
) -> ok | {error, atom()}.
copy_tex_image_2d(Target, Level, InternalFormat, X, Y, Width, Height, Border) ->
    NewInternalFormat = case InternalFormat of
        rgba -> ?GL_RGBA;
        rgb5_a1 -> ?GL_RGB5_A1;
        depth_component -> ?GL_DEPTH_COMPONENT;
        rgba4 -> ?GL_RGBA4;
        rgb565 -> ?GL_RGB565;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rgb -> ?GL_RGB;
        stencil_index8 -> ?GL_STENCIL_INDEX8
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d -> ?GL_TEXTURE_2D
    end,

    glCopyTexImage2D_raw(NewTarget, Level, NewInternalFormat, X, Y, Width, Height, Border).

-doc """
Control the front and/or back writing of individual bits in the stencil planes.

It implements the `glStencilMaskSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilMaskSeparate) formore information.
""".
-spec stencil_mask_separate(
    Face :: triangle_face(),
    Mask :: pos_integer()
) -> ok | {error, atom()}.
stencil_mask_separate(Face, Mask) ->
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glStencilMaskSeparate_raw(NewFace, Mask).

-doc """
Define the scissor box.

It implements the `glScissor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glScissor) formore information.
""".
-spec scissor(
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
scissor(X, Y, Width, Height) ->

    glScissor_raw(X, Y, Width, Height).

-doc """
Establish the data storage, format, dimensions, and number of samples of a multisample texture's image.

It implements the `glTexImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glTexImage2D) formore information.
""".
-spec tex_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Border :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_image_2d(Target, Level, InternalFormat, Width, Height, Border, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        float -> ?GL_FLOAT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        alpha -> ?GL_ALPHA;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE
    end,
    NewInternalFormat = case InternalFormat of
        rgba -> ?GL_RGBA;
        rgb5_a1 -> ?GL_RGB5_A1;
        depth_component -> ?GL_DEPTH_COMPONENT;
        rgba4 -> ?GL_RGBA4;
        rgb565 -> ?GL_RGB565;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rgb -> ?GL_RGB;
        stencil_index8 -> ?GL_STENCIL_INDEX8
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d -> ?GL_TEXTURE_2D
    end,

    glTexImage2D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Border, NewFormat, NewType, Pixels).

-doc """
Return error information.

It implements the `glGetError` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetError) formore information.
""".
-spec get_error() -> {ok, NoName :: error_code()} | {error, atom()}.
get_error() ->

    glGetError_raw().

-doc """
Bind a named texture to a texturing target.

It implements the `glBindTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBindTexture) formore information.
""".
-spec bind_texture(
    Target :: texture_target(),
    Texture :: texture()
) -> ok | {error, atom()}.
bind_texture(Target, Texture) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d -> ?GL_TEXTURE_2D
    end,

    glBindTexture_raw(NewTarget, Texture).

-doc """
Deletes a shader object.

It implements the `glDeleteShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteShader) formore information.
""".
-spec delete_shader(Shader :: shader()) -> ok | {error, atom()}.
delete_shader(Shader) ->

    glDeleteShader_raw(Shader).

-doc """
Set front and back function and reference value for stencil testing.

It implements the `glStencilFunc` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilFunc) formore information.
""".
-spec stencil_func(
    Function :: stencil_function(),
    Ref :: integer(),
    Mask :: pos_integer()
) -> ok | {error, atom()}.
stencil_func(Function, Ref, Mask) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,

    glStencilFunc_raw(NewFunction, Ref, Mask).

-doc """
Render primitives from array data.

It implements the `glDrawArrays` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDrawArrays) formore information.
""".
-spec draw_arrays(
    Mode :: primitive_type(),
    First :: integer(),
    Count :: integer()
) -> ok | {error, atom()}.
draw_arrays(Mode, First, Count) ->
    NewMode = case Mode of
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        lines -> ?GL_LINES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP
    end,

    glDrawArrays_raw(NewMode, First, Count).

-doc """
undefined

It implements the `glFramebufferTexture2D` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glFramebufferTexture2D) formore information.
""".
-spec framebuffer_texture_2d(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    TextureTarget :: texture_target(),
    Texture :: texture(),
    Level :: integer()
) -> ok | {error, atom()}.
framebuffer_texture_2d(Target, Attachment, TextureTarget, Texture, Level) ->
    NewTextureTarget = case TextureTarget of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d -> ?GL_TEXTURE_2D
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0
    end,
    NewTarget = case Target of
        framebuffer -> ?GL_FRAMEBUFFER
    end,

    glFramebufferTexture2D_raw(NewTarget, NewAttachment, NewTextureTarget, Texture, Level).

-doc """
Specify the width of rasterized lines.

It implements the `glLineWidth` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glLineWidth) formore information.
""".
-spec line_width(Width :: float()) -> ok | {error, atom()}.
line_width(Width) ->

    glLineWidth_raw(Width).

-doc """
Enable or disable writing into the depth buffer.

It implements the `glDepthMask` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDepthMask) formore information.
""".
-spec depth_mask(Flag :: boolean()) -> ok | {error, atom()}.
depth_mask(Flag) ->

    glDepthMask_raw(Flag).

-doc """
Set the RGB blend equation and the alpha blend equation separately.

It implements the `glBlendEquationSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBlendEquationSeparate) formore information.
""".
-spec blend_equation_separate(
    ModeRGB :: blend_equation_mode_e_x_t(),
    ModeAlpha :: blend_equation_mode_e_x_t()
) -> ok | {error, atom()}.
blend_equation_separate(ModeRGB, ModeAlpha) ->
    NewModeAlpha = case ModeAlpha of
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        func_add -> ?GL_FUNC_ADD
    end,
    NewModeRGB = case ModeRGB of
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        func_add -> ?GL_FUNC_ADD
    end,

    glBlendEquationSeparate_raw(NewModeRGB, NewModeAlpha).

-doc """
Set the viewport.

It implements the `glViewport` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glViewport) formore information.
""".
-spec viewport(
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
viewport(X, Y, Width, Height) ->

    glViewport_raw(X, Y, Width, Height).

-doc """
Delete renderbuffer objects.

It implements the `glDeleteRenderbuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteRenderbuffers) formore information.
""".
-spec delete_render_buffers(
    N :: integer(),
    Buffers :: [render_buffer()]
) -> ok | {error, atom()}.
delete_render_buffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    glDeleteRenderbuffers_raw(N, NewBuffers).

-doc """
Specify a two-dimensional texture subimage in a compressed format.

It implements the `glCompressedTexSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCompressedTexSubImage2D) formore information.
""".
-spec compressed_tex_sub_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: internal_format(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_sub_image_2d(Target, Level, OffsetX, OffsetY, Width, Height, Format, ImageSize, ImageData) ->
    NewFormat = case Format of
        rgba -> ?GL_RGBA;
        rgb5_a1 -> ?GL_RGB5_A1;
        depth_component -> ?GL_DEPTH_COMPONENT;
        rgba4 -> ?GL_RGBA4;
        rgb565 -> ?GL_RGB565;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rgb -> ?GL_RGB;
        stencil_index8 -> ?GL_STENCIL_INDEX8
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d -> ?GL_TEXTURE_2D
    end,

    glCompressedTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, Width, Height, NewFormat, ImageSize, ImageData).

-doc """
Bind a named buffer object.

It implements the `glBindBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBindBuffer) formore information.
""".
-spec bind_buffer(
    Target :: buffer_target_a_r_b(),
    Buffer :: buffer()
) -> ok | {error, atom()}.
bind_buffer(Target, Buffer) ->
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER
    end,

    glBindBuffer_raw(NewTarget, Buffer).

-doc """
Creates and initializes a buffer object's data
    store.

It implements the `glBufferData` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBufferData) formore information.
""".
-spec buffer_data(
    Target :: buffer_target_a_r_b(),
    Size :: integer(),
    Data :: undefined | binary(),
    Usage :: buffer_usage_a_r_b()
) -> ok | {error, atom()}.
buffer_data(Target, Size, Data, Usage) ->
    NewUsage = case Usage of
        stream_draw -> ?GL_STREAM_DRAW;
        static_draw -> ?GL_STATIC_DRAW;
        dynamic_draw -> ?GL_DYNAMIC_DRAW
    end,
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER
    end,

    glBufferData_raw(NewTarget, Size, Data, NewUsage).

-doc """
Returns the source code string from a shader object.

It implements the `glGetShaderSource` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetShaderSource) formore information.
""".
-spec get_shader_source(
    Shader :: shader(),
    StringSize :: pos_integer()
) -> {ok, Source :: binary()} | {error, atom()}.
get_shader_source(Shader, StringSize) ->

    glGetShaderSource_raw(Shader, StringSize).

-doc """
Specify multisample coverage parameters.

It implements the `glSampleCoverage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glSampleCoverage) formore information.
""".
-spec sample_coverage(
    Value :: float(),
    Invert :: boolean()
) -> ok | {error, atom()}.
sample_coverage(Value, Invert) ->

    glSampleCoverage_raw(Value, Invert).

-doc """
Set front and/or back stencil test actions.

It implements the `glStencilOpSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilOpSeparate) formore information.
""".
-spec stencil_op_separate(
    Face :: triangle_face(),
    StencilFail :: stencil_op(),
    DepthPassFail :: stencil_op(),
    DepthPassPass :: stencil_op()
) -> ok | {error, atom()}.
stencil_op_separate(Face, StencilFail, DepthPassFail, DepthPassPass) ->
    NewDepthPassPass = case DepthPassPass of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewDepthPassFail = case DepthPassFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewStencilFail = case StencilFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glStencilOpSeparate_raw(NewFace, NewStencilFail, NewDepthPassFail, NewDepthPassPass).

-doc """
Specify pixel arithmetic.

It implements the `glBlendFunc` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBlendFunc) formore information.
""".
-spec blend_func(
    SourceFactor :: blending_factor(),
    DestinationFactor :: blending_factor()
) -> ok | {error, atom()}.
blend_func(SourceFactor, DestinationFactor) ->
    NewDestinationFactor = case DestinationFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceFactor = case SourceFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,

    glBlendFunc_raw(NewSourceFactor, NewDestinationFactor).

-doc """
Specify implementation-specific hints.

It implements the `glHint` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glHint) formore information.
""".
-spec hint(
    Target :: hint_target(),
    Mode :: hint_mode()
) -> ok | {error, atom()}.
hint(Target, Mode) ->
    NewMode = case Mode of
        nicest -> ?GL_NICEST;
        dont_care -> ?GL_DONT_CARE;
        fastest -> ?GL_FASTEST
    end,
    NewTarget = case Target of
        generate_mipmap_hint -> ?GL_GENERATE_MIPMAP_HINT
    end,

    glHint_raw(NewTarget, NewMode).

-doc """
foobar

It implements the `glGetBooleanv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetBooleanv) formore information.
""".
-spec get_boolean(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [boolean()]} | {error, atom()}.
get_boolean(Name, N) ->
    NewName = case Name of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        line_width -> ?GL_LINE_WIDTH;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        shader_compiler -> ?GL_SHADER_COMPILER;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        blend -> ?GL_BLEND;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        depth_bits -> ?GL_DEPTH_BITS;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        scissor_test -> ?GL_SCISSOR_TEST;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        stencil_ref -> ?GL_STENCIL_REF;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        current_program -> ?GL_CURRENT_PROGRAM;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        depth_test -> ?GL_DEPTH_TEST;
        depth_func -> ?GL_DEPTH_FUNC;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetBooleanv_raw(NewName, N).

-doc """
Set the blend color.

It implements the `glBlendColor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBlendColor) formore information.
""".
-spec blend_color(
    Red :: float(),
    Green :: float(),
    Blue :: float(),
    Alpha :: float()
) -> ok | {error, atom()}.
blend_color(Red, Green, Blue, Alpha) ->

    glBlendColor_raw(Red, Green, Blue, Alpha).

-doc """
Release resources consumed by the implementation's shader compiler.

It implements the `glReleaseShaderCompiler` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glReleaseShaderCompiler) formore information.
""".
-spec release_shader_compiler() -> ok | {error, atom()}.
release_shader_compiler() ->

    glReleaseShaderCompiler_raw().

-doc """
Replaces the source code in a shader object.

It implements the `glShaderSource` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glShaderSource) formore information.
""".
-spec shader_source(
    Shader :: shader(),
    Source :: [string() | binary()]
) -> ok | {error, atom()}.
shader_source(Shader, Source) ->
    SourceNew = lists:map(fun
        (SourceItem) when is_list(SourceItem) -> list_to_binary(SourceItem);
        (SourceItem) when is_binary(SourceItem) -> SourceItem
    end, Source),
    glShaderSource_raw(Shader, SourceNew).

-doc """
Clear buffers to preset values.

It implements the `glClear` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glClear) formore information.
""".
-spec clear(Mask :: clear_buffer_mask()) -> ok | {error, atom()}.
clear(Mask) ->
    NewMask = lists:foldl(fun(Field, L) ->
        R = case Field of
            stencil_buffer_bit -> ?GL_STENCIL_BUFFER_BIT;
            color_buffer_bit -> ?GL_COLOR_BUFFER_BIT;
            depth_buffer_bit -> ?GL_DEPTH_BUFFER_BIT
        end,
        L bor R
    end, 16#00, Mask),
    glClear_raw(NewMask).

-doc """
Attach a renderbuffer as a logical buffer of a framebuffer object.

It implements the `glFramebufferRenderbuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glFramebufferRenderbuffer) formore information.
""".
-spec framebuffer_renderbuffer(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    RenderbufferTarget :: renderbuffer_target(),
    Renderbuffer :: render_buffer()
) -> ok | {error, atom()}.
framebuffer_renderbuffer(Target, Attachment, RenderbufferTarget, Renderbuffer) ->
    NewRenderbufferTarget = case RenderbufferTarget of
        renderbuffer -> ?GL_RENDERBUFFER
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0
    end,
    NewTarget = case Target of
        framebuffer -> ?GL_FRAMEBUFFER
    end,

    glFramebufferRenderbuffer_raw(NewTarget, NewAttachment, NewRenderbufferTarget, Renderbuffer).

-doc """
Copy a two-dimensional texture subimage.

It implements the `glCopyTexSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCopyTexSubImage2D) formore information.
""".
-spec copy_tex_sub_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
copy_tex_sub_image_2d(Target, Level, OffsetX, OffsetY, X, Y, Width, Height) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d -> ?GL_TEXTURE_2D
    end,

    glCopyTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, X, Y, Width, Height).

-doc """
Set front and/or back function and reference value for stencil testing.

It implements the `glStencilFuncSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilFuncSeparate) formore information.
""".
-spec stencil_func_separate(
    Face :: triangle_face(),
    Function :: stencil_function(),
    Ref :: integer(),
    Mask :: pos_integer()
) -> ok | {error, atom()}.
stencil_func_separate(Face, Function, Ref, Mask) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glStencilFuncSeparate_raw(NewFace, NewFunction, Ref, Mask).

-doc """
foobar

It implements the `glGetIntegerv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) formore information.
""".
-spec get_integer(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_integer(Name, N) ->
    NewName = case Name of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        line_width -> ?GL_LINE_WIDTH;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        shader_compiler -> ?GL_SHADER_COMPILER;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        blend -> ?GL_BLEND;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        depth_bits -> ?GL_DEPTH_BITS;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        scissor_test -> ?GL_SCISSOR_TEST;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        stencil_ref -> ?GL_STENCIL_REF;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        current_program -> ?GL_CURRENT_PROGRAM;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        depth_test -> ?GL_DEPTH_TEST;
        depth_func -> ?GL_DEPTH_FUNC;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetIntegerv_raw(NewName, N).

-doc """
Generate renderbuffer object names.

It implements the `glGenRenderbuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGenRenderbuffers) formore information.
""".
-spec gen_render_buffers(N :: pos_integer()) -> {ok, Buffers :: [render_buffer()]} | {error, atom()}.
gen_render_buffers(N) ->

    glGenRenderbuffers_raw(N).

-doc """
Specify the value used for depth buffer comparisons.

It implements the `glDepthFunc` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDepthFunc) formore information.
""".
-spec depth_func(Function :: depth_function()) -> ok | {error, atom()}.
depth_func(Function) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,

    glDepthFunc_raw(NewFunction).

-doc """
Generate framebuffer object names.

It implements the `glGenFramebuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGenFramebuffers) formore information.
""".
-spec gen_framebuffers(N :: pos_integer()) -> {ok, Buffers :: [frame_buffer()]} | {error, atom()}.
gen_framebuffers(N) ->

    glGenFramebuffers_raw(N).

-doc """
foobar

It implements the `glGetFloatv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetFloatv) formore information.
""".
-spec get_float(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [float()]} | {error, atom()}.
get_float(Name, N) ->
    NewName = case Name of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        line_width -> ?GL_LINE_WIDTH;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        shader_compiler -> ?GL_SHADER_COMPILER;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        blend -> ?GL_BLEND;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        depth_bits -> ?GL_DEPTH_BITS;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        scissor_test -> ?GL_SCISSOR_TEST;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        stencil_ref -> ?GL_STENCIL_REF;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        current_program -> ?GL_CURRENT_PROGRAM;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        depth_test -> ?GL_DEPTH_TEST;
        depth_func -> ?GL_DEPTH_FUNC;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetFloatv_raw(NewName, N).

-doc """
Enable and disable writing of frame buffer color components.

It implements the `glColorMask` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glColorMask) formore information.
""".
-spec color_mask(
    Red :: boolean(),
    Green :: boolean(),
    Blue :: boolean(),
    Alpha :: boolean()
) -> ok | {error, atom()}.
color_mask(Red, Green, Blue, Alpha) ->

    glColorMask_raw(Red, Green, Blue, Alpha).

-doc """
Determine if a name corresponds to a texture.

It implements the `glIsTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsTexture) formore information.
""".
-spec is_texture(Texture :: texture()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_texture(Texture) ->

    glIsTexture_raw(Texture).

-doc """
Determine if a name corresponds to a framebuffer object.

It implements the `glIsFramebuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsFramebuffer) formore information.
""".
-spec is_framebuffer(Buffer :: frame_buffer()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_framebuffer(Buffer) ->

    glIsFramebuffer_raw(Buffer).

-doc """
Define front- and back-facing polygons.

It implements the `glFrontFace` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glFrontFace) formore information.
""".
-spec front_face(Mode :: front_face_direction()) -> ok | {error, atom()}.
front_face(Mode) ->
    NewMode = case Mode of
        ccw -> ?GL_CCW;
        cw -> ?GL_CW
    end,

    glFrontFace_raw(NewMode).

-doc """
Specify the equation used for both the RGB blend equation and the Alpha blend equation.

It implements the `glBlendEquation` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBlendEquation) formore information.
""".
-spec blend_equation(Mode :: blend_equation_mode_e_x_t()) -> ok | {error, atom()}.
blend_equation(Mode) ->
    NewMode = case Mode of
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        func_add -> ?GL_FUNC_ADD
    end,

    glBlendEquation_raw(NewMode).

-doc """
Return a string describing the current GL connection.

It implements the `glGetString` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetString) formore information.
""".
-spec get_string(Name :: string_name()) -> {ok, NoName :: string() | binary()} | {error, atom()}.
get_string(Name) ->
    NewName = case Name of
        vendor -> ?GL_VENDOR;
        renderer -> ?GL_RENDERER;
        extensions -> ?GL_EXTENSIONS;
        shading_language_version -> ?GL_SHADING_LANGUAGE_VERSION;
        version -> ?GL_VERSION
    end,

    glGetString_raw(NewName).

-doc """
Returns the information log for a shader object.

It implements the `glGetShaderInfoLog` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetShaderInfoLog) formore information.
""".
-spec get_shader_info_log(
    Shader :: shader(),
    StringSize :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_shader_info_log(Shader, StringSize) ->

    glGetShaderInfoLog_raw(Shader, StringSize).

-doc """
Enable or disable server-side GL capabilities.

It implements the `glEnable` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glEnable) formore information.
""".
-spec enable(Cap :: enable_cap()) -> ok | {error, atom()}.
enable(Cap) ->
    NewCap = case Cap of
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        blend -> ?GL_BLEND;
        cull_face -> ?GL_CULL_FACE;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glEnable_raw(NewCap).

-doc """
Determine if a name corresponds to a buffer object.

It implements the `glIsBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsBuffer) formore information.
""".
-spec is_buffer(Buffer :: buffer()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_buffer(Buffer) ->

    glIsBuffer_raw(Buffer).

-doc """
Specify pixel arithmetic for RGB and alpha components separately.

It implements the `glBlendFuncSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBlendFuncSeparate) formore information.
""".
-spec blend_func_separate(
    SourceRGB :: blending_factor(),
    DestinationRGB :: blending_factor(),
    SourceAlpha :: blending_factor(),
    DestinationAlpha :: blending_factor()
) -> ok | {error, atom()}.
blend_func_separate(SourceRGB, DestinationRGB, SourceAlpha, DestinationAlpha) ->
    NewDestinationAlpha = case DestinationAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceAlpha = case SourceAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewDestinationRGB = case DestinationRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceRGB = case SourceRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,

    glBlendFuncSeparate_raw(NewSourceRGB, NewDestinationRGB, NewSourceAlpha, NewDestinationAlpha).

-doc """
Bind a framebuffer to a framebuffer target.

It implements the `glBindFramebuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBindFramebuffer) formore information.
""".
-spec bind_framebuffer(
    Target :: framebuffer_target(),
    Buffer :: frame_buffer()
) -> ok | {error, atom()}.
bind_framebuffer(Target, Buffer) ->
    NewTarget = case Target of
        framebuffer -> ?GL_FRAMEBUFFER
    end,

    glBindFramebuffer_raw(NewTarget, Buffer).

-doc """
Specify clear values for the color buffers.

It implements the `glClearColor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glClearColor) formore information.
""".
-spec clear_color(
    Red :: float(),
    Green :: float(),
    Blue :: float(),
    Alpha :: float()
) -> ok | {error, atom()}.
clear_color(Red, Green, Blue, Alpha) ->

    glClearColor_raw(Red, Green, Blue, Alpha).

-doc """
Delete named textures.

It implements the `glDeleteTextures` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteTextures) formore information.
""".
-spec delete_textures(
    N :: integer(),
    Textures :: [texture()]
) -> ok | {error, atom()}.
delete_textures(N, Textures) ->
    NewTextures = << <<ID:32/native>> || ID <- Textures >>,
    glDeleteTextures_raw(N, NewTextures).

-doc """
Establish data storage, format and dimensions of a
    renderbuffer object's image.

It implements the `glRenderbufferStorage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glRenderbufferStorage) formore information.
""".
-spec render_buffer_storage(
    Target :: renderbuffer_target(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
render_buffer_storage(Target, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        rgba -> ?GL_RGBA;
        rgb5_a1 -> ?GL_RGB5_A1;
        depth_component -> ?GL_DEPTH_COMPONENT;
        rgba4 -> ?GL_RGBA4;
        rgb565 -> ?GL_RGB565;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rgb -> ?GL_RGB;
        stencil_index8 -> ?GL_STENCIL_INDEX8
    end,
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    glRenderbufferStorage_raw(NewTarget, NewInternalFormat, Width, Height).

-doc """
Test whether a capability is enabled.

It implements the `glIsEnabled` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsEnabled) formore information.
""".
-spec is_enabled(Capability :: enable_cap()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_enabled(Capability) ->
    NewCapability = case Capability of
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        blend -> ?GL_BLEND;
        cull_face -> ?GL_CULL_FACE;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glIsEnabled_raw(NewCapability).

-doc """
Delete named buffer objects.

It implements the `glDeleteBuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteBuffers) formore information.
""".
-spec delete_buffers(
    N :: integer(),
    Buffers :: [buffer()]
) -> ok | {error, atom()}.
delete_buffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    glDeleteBuffers_raw(N, NewBuffers).

-doc """
Generate buffer object names.

It implements the `glGenBuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGenBuffers) formore information.
""".
-spec gen_buffers(N :: pos_integer()) -> {ok, Buffers :: [buffer()]} | {error, atom()}.
gen_buffers(N) ->

    glGenBuffers_raw(N).

-doc """
Select active texture unit.

It implements the `glActiveTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glActiveTexture) formore information.
""".
-spec active_texture(Texture :: texture_unit()) -> ok | {error, atom()}.
active_texture(Texture) ->
    NewTexture = case Texture of
        texture31 -> ?GL_TEXTURE31;
        texture0 -> ?GL_TEXTURE0;
        texture22 -> ?GL_TEXTURE22;
        texture1 -> ?GL_TEXTURE1;
        texture15 -> ?GL_TEXTURE15;
        texture30 -> ?GL_TEXTURE30;
        texture20 -> ?GL_TEXTURE20;
        texture26 -> ?GL_TEXTURE26;
        texture25 -> ?GL_TEXTURE25;
        texture7 -> ?GL_TEXTURE7;
        texture18 -> ?GL_TEXTURE18;
        texture11 -> ?GL_TEXTURE11;
        texture5 -> ?GL_TEXTURE5;
        texture3 -> ?GL_TEXTURE3;
        texture29 -> ?GL_TEXTURE29;
        texture13 -> ?GL_TEXTURE13;
        texture16 -> ?GL_TEXTURE16;
        texture4 -> ?GL_TEXTURE4;
        texture12 -> ?GL_TEXTURE12;
        texture21 -> ?GL_TEXTURE21;
        texture27 -> ?GL_TEXTURE27;
        texture24 -> ?GL_TEXTURE24;
        texture23 -> ?GL_TEXTURE23;
        texture28 -> ?GL_TEXTURE28;
        texture9 -> ?GL_TEXTURE9;
        texture8 -> ?GL_TEXTURE8;
        texture6 -> ?GL_TEXTURE6;
        texture17 -> ?GL_TEXTURE17;
        texture2 -> ?GL_TEXTURE2;
        texture10 -> ?GL_TEXTURE10;
        texture14 -> ?GL_TEXTURE14;
        texture19 -> ?GL_TEXTURE19
    end,

    glActiveTexture_raw(NewTexture).

-doc """
Block until all GL execution is complete.

It implements the `glFinish` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glFinish) formore information.
""".
-spec finish() -> ok | {error, atom()}.
finish() ->

    glFinish_raw().

-doc """
Create program pipeline objects.

It implements the `glCreateProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCreateProgram) formore information.
""".
-spec create_program() -> {ok, NoName :: program()} | {error, atom()}.
create_program() ->

    glCreateProgram_raw().

-doc """
Specify whether front- or back-facing facets can be culled.

It implements the `glCullFace` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCullFace) formore information.
""".
-spec cull_face(Mode :: triangle_face()) -> ok | {error, atom()}.
cull_face(Mode) ->
    NewMode = case Mode of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glCullFace_raw(NewMode).

-doc """
undefined

It implements the `glGetProgramiv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramiv) formore information.
""".
-spec get_program_iv(
    Program :: program(),
    PName :: program_property_a_r_b(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_program_iv(Program, PName, N) ->
    NewPName = case PName of
        active_uniform_max_length -> ?GL_ACTIVE_UNIFORM_MAX_LENGTH;
        delete_status -> ?GL_DELETE_STATUS;
        active_attributes -> ?GL_ACTIVE_ATTRIBUTES;
        active_attribute_max_length -> ?GL_ACTIVE_ATTRIBUTE_MAX_LENGTH;
        active_uniforms -> ?GL_ACTIVE_UNIFORMS;
        validate_status -> ?GL_VALIDATE_STATUS;
        info_log_length -> ?GL_INFO_LOG_LENGTH;
        link_status -> ?GL_LINK_STATUS;
        attached_shaders -> ?GL_ATTACHED_SHADERS
    end,

    glGetProgramiv_raw(Program, NewPName, N).

-doc """
Installs a program object as part of current rendering state.

It implements the `glUseProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glUseProgram) formore information.
""".
-spec use_program(Program :: program()) -> ok | {error, atom()}.
use_program(Program) ->

    glUseProgram_raw(Program).

-doc """
Read a block of pixels from the frame buffer.

It implements the `glReadPixels` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glReadPixels) formore information.
""".
-spec read_pixels(
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    DataSize :: pos_integer()
) -> {ok, Data :: binary()} | {error, atom()}.
read_pixels(X, Y, Width, Height, Format, Type, DataSize) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        float -> ?GL_FLOAT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        alpha -> ?GL_ALPHA;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE
    end,

    glReadPixels_raw(X, Y, Width, Height, NewFormat, NewType, DataSize).

-doc """
Deletes a program object.

It implements the `glDeleteProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteProgram) formore information.
""".
-spec delete_program(Program :: program()) -> ok | {error, atom()}.
delete_program(Program) ->

    glDeleteProgram_raw(Program).


glDisable_raw(_Cap) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindRenderbuffer_raw(_Target, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glEnableVertexAttribArray_raw(_Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glClearStencil_raw(_S) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetProgramInfoLog_raw(_Program, _InfoLog) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilOp_raw(_Fail, _ZFail, _ZPass) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsRenderbuffer_raw(_Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetShaderiv_raw(_Shader, _PName, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glFlush_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateShader_raw(_Type) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribPointer_raw(_Index, _Size, _Type, _Normalized, _Stride, _Pointer) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteFramebuffers_raw(_N, _Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glPolygonOffset_raw(_Factor, _Units) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilMask_raw(_Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glDisableVertexAttribArray_raw(_Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glLinkProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompileShader_raw(_Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glDetachShader_raw(_Program, _Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexImage2D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Border, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glAttachShader_raw(_Program, _Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenerateMipmap_raw(_Target) -> 
    erlang:nif_error(nif_library_not_loaded).

glCheckFramebufferStatus_raw(_Target) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsShader_raw(_Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenTextures_raw(_Textures) -> 
    erlang:nif_error(nif_library_not_loaded).

glValidateProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTexImage2D_raw(_Target, _Level, _InternalFormat, _X, _Y, _Width, _Height, _Border) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilMaskSeparate_raw(_Face, _Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glScissor_raw(_X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexImage2D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Border, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetError_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glBindTexture_raw(_Target, _Texture) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteShader_raw(_Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilFunc_raw(_Function, _Ref, _Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glDrawArrays_raw(_Mode, _First, _Count) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTexture2D_raw(_Target, _Attachment, _TextureTarget, _Texture, _Level) -> 
    erlang:nif_error(nif_library_not_loaded).

glLineWidth_raw(_Width) -> 
    erlang:nif_error(nif_library_not_loaded).

glDepthMask_raw(_Flag) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendEquationSeparate_raw(_ModeRGB, _ModeAlpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glViewport_raw(_X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteRenderbuffers_raw(_N, _Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindBuffer_raw(_Target, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glBufferData_raw(_Target, _Size, _Data, _Usage) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetShaderSource_raw(_Shader, _Source) -> 
    erlang:nif_error(nif_library_not_loaded).

glSampleCoverage_raw(_Value, _Invert) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilOpSeparate_raw(_Face, _StencilFail, _DepthPassFail, _DepthPassPass) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendFunc_raw(_SourceFactor, _DestinationFactor) -> 
    erlang:nif_error(nif_library_not_loaded).

glHint_raw(_Target, _Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetBooleanv_raw(_Name, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendColor_raw(_Red, _Green, _Blue, _Alpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glReleaseShaderCompiler_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glShaderSource_raw(_Shader, _Source) -> 
    erlang:nif_error(nif_library_not_loaded).

glClear_raw(_Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferRenderbuffer_raw(_Target, _Attachment, _RenderbufferTarget, _Renderbuffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilFuncSeparate_raw(_Face, _Function, _Ref, _Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetIntegerv_raw(_Name, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenRenderbuffers_raw(_Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glDepthFunc_raw(_Function) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenFramebuffers_raw(_Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetFloatv_raw(_Name, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glColorMask_raw(_Red, _Green, _Blue, _Alpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsTexture_raw(_Texture) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsFramebuffer_raw(_Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glFrontFace_raw(_Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendEquation_raw(_Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetString_raw(_Name) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetShaderInfoLog_raw(_Shader, _InfoLog) -> 
    erlang:nif_error(nif_library_not_loaded).

glEnable_raw(_Cap) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsBuffer_raw(_Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendFuncSeparate_raw(_SourceRGB, _DestinationRGB, _SourceAlpha, _DestinationAlpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindFramebuffer_raw(_Target, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glClearColor_raw(_Red, _Green, _Blue, _Alpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteTextures_raw(_N, _Textures) -> 
    erlang:nif_error(nif_library_not_loaded).

glRenderbufferStorage_raw(_Target, _InternalFormat, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsEnabled_raw(_Capability) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteBuffers_raw(_N, _Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenBuffers_raw(_Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glActiveTexture_raw(_Texture) -> 
    erlang:nif_error(nif_library_not_loaded).

glFinish_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateProgram_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glCullFace_raw(_Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetProgramiv_raw(_Program, _PName, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glUseProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glReadPixels_raw(_X, _Y, _Width, _Height, _Format, _Type, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).


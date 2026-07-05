%% This file is generated. Do not edit!
-module(gl).
-moduledoc """
OpenGL ES 2.0 binding.

It exposes the OpenGL ES 2.0 API through the `gl` module with small, explicit adjustments for BEAM use.

Most command names stay close to their OpenGL counterparts. The generator maps
camel-case commands to snake_case functions, exposes enums as atoms and
bitfields as lists of atoms, and uses named `gl:*()` types for OpenGL scalar
families such as `gl:int()`, `gl:sizei()`, `gl:float()`, and `gl:double()`.

For example:

```erlang
{ok, Shader} = gl:create_shader(vertex_shader).
ok = gl:line_width(3.0).
ok = gl:scissor(0, 0, 800, 600).
```

It keeps the command identity recognizable while replacing raw integer
constants with atoms and turning OpenGL object names into typed handles such as
`gl:shader()`, `gl:program()`, `gl:buffer()`, and `gl:texture()`.

When OpenGL uses fixed-size numeric aggregates, the binding prefers structured
tuple values over flat caller-managed arrays. Vectors map to tuples by arity,
and matrix families use tuples of column vectors so shapes such as
`matrix2x3(gl:float())` read as two columns of height three.

```erlang
ok = gl:program_uniform(ui, Program, Location, {0.0, 1.0, 0.0, 1.0}).
```

That keeps the aggregate shape visible at the call site.

Some OpenGL commands use a raw enum argument to choose a semantic sub-operation.
When the valid value type depends on that enum, the binding prefers explicit
semantic wrappers over exposing the raw selector directly.

```erlang
ok = gl:tex_min_filter(texture_2d, nearest).
ok = gl:tex_mag_filter(texture_2d, nearest).
ok = gl:tex_wrap_s(texture_2d, clamp_to_edge).
ok = gl:tex_wrap_t(texture_2d, clamp_to_edge).
```

Return values also follow a small BEAM-oriented convention: commands that do
not produce a value return `ok`, and commands that produce one or more values
return `{ok, ...}` tuples.

The generated module also provides enum helper functions:

- `enum_groups_/0` lists the available enum groups.
- `enums_/1` lists the atoms for one enum group.
- `enum_value_/1` maps an atom to its numeric OpenGL value.
- `value_enums_/1` maps a numeric value to the matching atoms.
- `value_enum_/2` resolves one numeric value within a specific enum group.

The module assumes a valid OpenGL context is already current before any NIF
backed command runs. That keeps context creation and current-context management
outside the `gl` module itself.
""".

-compile({nowarn_redefined_builtin_type, [boolean/0, byte/0, float/0]}).

% Low-level OpenGL types.
-export_type([boolean/0]).
-export_type([byte/0]).
-export_type([ubyte/0]).
-export_type([short/0]).
-export_type([ushort/0]).
-export_type([int/0]).
-export_type([uint/0]).
-export_type([int64/0]).
-export_type([uint64/0]).
-export_type([sizei/0]).
-export_type([intptr/0]).
-export_type([sizeiptr/0]).
-export_type([offset/0]).
-export_type([float/0]).
-export_type([double/0]).

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
-export_type([renderbuffer/0]).
-export_type([framebuffer/0]).
-export_type([texture/0]).

% The OpenGL enum types.
-export_type([texture_min_filter/0]).
-export_type([attribute_type/0]).
-export_type([framebuffer_target/0]).
-export_type([string_name/0]).
-export_type([pixel_format/0]).
-export_type([front_face_direction/0]).
-export_type([state_parameter_name/0]).
-export_type([texture_unit/0]).
-export_type([buffer_parameter_name/0]).
-export_type([texture_mag_filter/0]).
-export_type([blend_equation_mode/0]).
-export_type([texture_wrap_mode/0]).
-export_type([internal_format/0]).
-export_type([shader_type/0]).
-export_type([vertex_attrib_pointer_type/0]).
-export_type([buffer_target/0]).
-export_type([texture_target/0]).
-export_type([blending_factor/0]).
-export_type([renderbuffer_parameter_name/0]).
-export_type([uniform_type/0]).
-export_type([stencil_op/0]).
-export_type([enable_cap/0]).
-export_type([shader_precision_type/0]).
-export_type([pixel_type/0]).
-export_type([hint_target/0]).
-export_type([triangle_face/0]).
-export_type([vertex_attrib_parameter_name/0]).
-export_type([primitive_type/0]).
-export_type([buffer_usage/0]).
-export_type([framebuffer_attachment/0]).
-export_type([draw_elements_type/0]).
-export_type([renderbuffer_target/0]).
-export_type([depth_function/0]).
-export_type([hint_mode/0]).
-export_type([framebuffer_attachment_parameter_name/0]).
-export_type([stencil_function/0]).
-export_type([texture_parameter_name/0]).
-export_type([error_code/0]).
-export_type([pixel_store_parameter/0]).
-export_type([framebuffer_status/0]).

% The OpenGL bitfield types.
-export_type([clear_buffer_mask/0]).

% Extra functions.
-export([enum_groups_/0]).
-export([enums_/1]).
-export([enum_value_/1]).
-export([value_enums_/1]).
-export([value_enum_/2]).


-export([disable/1]).
-export([get_program_link_status/1]).
-export([tex_sub_image_2d/9]).
-export([enable_vertex_attrib_array/1]).
-export([clear_stencil/1]).
-export([get_program_active_uniforms_count/1]).
-export([bind_attrib_location/3]).
-export([get_program_info_log/2]).
-export([get_shader_precision_format/2]).
-export([get_num_shader_binary_formats/0]).
-export([delete_renderbuffers/1]).
-export([stencil_op/3]).
-export([is_renderbuffer/1]).
-export([flush/0]).
-export([create_shader/1]).
-export([get_program_attached_shaders_count/1]).
-export([vertex_attrib_pointer/6]).
-export([get_max_fragment_uniform_vectors/0]).
-export([draw_elements/4]).
-export([polygon_offset/2]).
-export([get_shader_source_length/1]).
-export([stencil_mask/1]).
-export([disable_vertex_attrib_array/1]).
-export([get_program_validation_status/1]).
-export([clear_depth/1]).
-export([link_program/1]).
-export([compile_shader/1]).
-export([detach_shader/2]).
-export([buffer_data/3]).
-export([get_shader_info_log_length/1]).
-export([attach_shader/2]).
-export([generate_mipmap/1]).
-export([tex_parameter/4]).
-export([get_shader_compiler_supported/0]).
-export([get_program_active_attributes_count/1]).
-export([get_samples_count/0]).
-export([check_framebuffer_status/1]).
-export([is_program/1]).
-export([is_shader/1]).
-export([gen_textures/1]).
-export([gen_renderbuffers/1]).
-export([shader_binary/3]).
-export([get_active_attrib/3]).
-export([validate_program/1]).
-export([get_sample_buffers_count/0]).
-export([copy_tex_image_2d/8]).
-export([stencil_mask_separate/2]).
-export([scissor/4]).
-export([tex_image_2d/9]).
-export([get_attrib_location/2]).
-export([get_max_cube_map_texture_size/0]).
-export([get_vertex_attrib/4]).
-export([get_error/0]).
-export([get_program_info_log_length/1]).
-export([bind_texture/2]).
-export([delete_shader/1]).
-export([depth_range/2]).
-export([uniform/3]).
-export([stencil_func/3]).
-export([tex_wrap_t/2]).
-export([draw_arrays/3]).
-export([get_max_vertex_texture_image_units/0]).
-export([framebuffer_texture_2d/5]).
-export([delete_textures/1]).
-export([get_max_varying_vectors/0]).
-export([get_max_combined_texture_image_units/0]).
-export([tex_min_filter/2]).
-export([tex_mag_filter/2]).
-export([line_width/1]).
-export([depth_mask/1]).
-export([blend_equation_separate/2]).
-export([viewport/4]).
-export([compressed_tex_sub_image_2d/8]).
-export([tex_wrap_s/2]).
-export([bind_buffer/2]).
-export([uniform_matrix/3]).
-export([get_program_delete_status/1]).
-export([get_shader_source/2]).
-export([get_program_active_uniform_max_length/1]).
-export([sample_coverage/2]).
-export([stencil_op_separate/4]).
-export([get_subpixel_bits/0]).
-export([blend_func/2]).
-export([delete_framebuffers/1]).
-export([hint/2]).
-export([get_boolean/2]).
-export([blend_color/4]).
-export([delete_buffers/1]).
-export([get_framebuffer_attachment_parameter/4]).
-export([get_program_active_attribute_max_length/1]).
-export([release_shader_compiler/0]).
-export([pixel_store/2]).
-export([shader_source/2]).
-export([clear/1]).
-export([framebuffer_renderbuffer/4]).
-export([get_max_renderbuffer_size/0]).
-export([get_buffer_parameter/4]).
-export([get_unpack_alignment/0]).
-export([copy_tex_sub_image_2d/8]).
-export([get_active_uniform/3]).
-export([renderbuffer_storage/4]).
-export([get_num_compressed_texture_formats/0]).
-export([stencil_func_separate/4]).
-export([get_integer/2]).
-export([depth_func/1]).
-export([gen_framebuffers/1]).
-export([get_max_texture_image_units/0]).
-export([get_float/2]).
-export([color_mask/4]).
-export([get_attached_shaders/2]).
-export([is_texture/1]).
-export([is_framebuffer/1]).
-export([front_face/1]).
-export([blend_equation/1]).
-export([get_string/1]).
-export([get_shader_info_log/2]).
-export([enable/1]).
-export([get_tex_parameter/4]).
-export([is_buffer/1]).
-export([blend_func_separate/4]).
-export([bind_framebuffer/2]).
-export([bind_renderbuffer/2]).
-export([clear_color/4]).
-export([get_max_vertex_attribs/0]).
-export([is_enabled/1]).
-export([vertex_attrib/3]).
-export([gen_buffers/1]).
-export([get_uniform/4]).
-export([buffer_sub_data/3]).
-export([active_texture/1]).
-export([get_max_texture_size/0]).
-export([get_shader_delete_status/1]).
-export([finish/0]).
-export([get_renderbuffer_parameter/3]).
-export([get_shader_compile_status/1]).
-export([create_program/0]).
-export([compressed_tex_image_2d/7]).
-export([cull_face/1]).
-export([get_max_vertex_uniform_vectors/0]).
-export([use_program/1]).
-export([read_pixels/7]).
-export([delete_program/1]).
-export([get_pack_alignment/0]).
-export([get_uniform_location/2]).

-include("../include/gl.hrl").

-define(CALL_RAW_FUNC_UNCHECKED(Func),
    begin
    case Func of
        {} ->
            ok;
        {Arg__} ->
            {ok, Arg__};
        {Arg1__, Arg2__} ->
            {ok, Arg1__, Arg2__};
        {Arg1__, Arg2__, Arg3__} ->
            {ok, Arg1__, Arg2__, Arg3__}
    end
    end
).
-ifndef(DEBUG).
-define(CALL_RAW_FUNC(Func), ?CALL_RAW_FUNC_UNCHECKED(Func)).
-else.
-define(CALL_RAW_FUNC(Func), 
    begin
    Result__ = Func,
    case gl:get_error() of
        {ok, no_error} ->
            ?CALL_RAW_FUNC_UNCHECKED(Result__);
        {ok, Code__} ->
            {error, Code__}
    end
    end
).
-endif.
-doc "The OpenGL `boolean` type.".
-type boolean() :: erlang:boolean().
-doc "The OpenGL `byte` type.".
-type byte() :: integer().
-doc "The OpenGL `ubyte` type.".
-type ubyte() :: non_neg_integer().
-doc "The OpenGL `short` type.".
-type short() :: integer().
-doc "The OpenGL `ushort` type.".
-type ushort() :: non_neg_integer().
-doc "The OpenGL `int` type.".
-type int() :: integer().
-doc "The OpenGL `uint` type.".
-type uint() :: non_neg_integer().
-doc "The OpenGL `int64` type.".
-type int64() :: integer().
-doc "The OpenGL `uint64` type.".
-type uint64() :: non_neg_integer().
-doc "The OpenGL `sizei` type.".
-type sizei() :: integer().
-doc "The OpenGL `intptr` type.".
-type intptr() :: integer().
-doc "The OpenGL `sizeiptr` type.".
-type sizeiptr() :: integer().
-doc "A byte offset into the currently bound OpenGL buffer.".
-type offset() :: non_neg_integer().
-doc "The OpenGL `float` type.".
-type float() :: erlang:float().
-doc "The OpenGL `double` type.".
-type double() :: erlang:float().

-doc "to be written.".
-type scalar(Type) :: Type.

-doc "A 1D vector.".
-type vector1(Type) :: {scalar(Type)}.
-doc "A 2D vector.".
-type vector2(Type) :: {scalar(Type), scalar(Type)}.
-doc "A 3D vector.".
-type vector3(Type) :: {scalar(Type), scalar(Type), scalar(Type)}.
-doc "A 4D vector.".
-type vector4(Type) :: {scalar(Type), scalar(Type), scalar(Type), scalar(Type)}.

-doc "A 2x2 matrix.".
-type matrix2(Type) :: {vector2(Type), vector2(Type)}.
-doc "A 3x3 matrix.".
-type matrix3(Type) :: {vector3(Type), vector3(Type), vector3(Type)}.
-doc "A 4x4 matrix.".
-type matrix4(Type) :: {vector4(Type), vector4(Type), vector4(Type), vector4(Type)}.

-doc "A 2x3 matrix.".
-type matrix2x3(Type) :: {vector3(Type), vector3(Type)}.
-doc "A 3x2 matrix.".
-type matrix3x2(Type) :: {vector2(Type), vector2(Type), vector2(Type)}.

-doc "A 2x4 matrix.".
-type matrix2x4(Type) :: {vector4(Type), vector4(Type)}.
-doc "A 4x2 matrix.".
-type matrix4x2(Type) :: {vector2(Type), vector2(Type), vector2(Type), vector2(Type)}.

-doc "A 3x4 matrix.".
-type matrix3x4(Type) :: {vector4(Type), vector4(Type), vector4(Type)}.
-doc "A 4x3 matrix.".
-type matrix4x3(Type) :: {vector3(Type), vector3(Type), vector3(Type), vector3(Type)}.

-doc "An OpenGL enum.".
-type enum() :: atom().
-doc "An OpenGL bit field.".
-type bitfield() :: [atom()].

-doc "An OpenGL shader object.".
-type shader() :: pos_integer().
-doc "An OpenGL program object.".
-type program() :: pos_integer().
-doc "An OpenGL buffer object.".
-type buffer() :: pos_integer().
-doc "An OpenGL renderbuffer object.".
-type renderbuffer() :: pos_integer().
-doc "An OpenGL framebuffer object.".
-type framebuffer() :: pos_integer().
-doc "An OpenGL texture object.".
-type texture() :: pos_integer().

-doc "The OpenGL `texture_min_filter` enum.".
-type texture_min_filter() ::
    nearest_mipmap_linear |
    nearest |
    linear |
    linear_mipmap_linear |
    linear_mipmap_nearest |
    nearest_mipmap_nearest
.
-doc "The OpenGL `attribute_type` enum.".
-type attribute_type() ::
    sampler_cube |
    int_vec4 |
    float_mat4 |
    bool_vec3 |
    float_vec2 |
    sampler_2d |
    float_vec3 |
    float |
    float_mat2 |
    float_vec4 |
    bool_vec4 |
    int_vec3 |
    bool |
    bool_vec2 |
    int |
    unsigned_int |
    float_mat3 |
    int_vec2
.
-doc "The OpenGL `framebuffer_target` enum.".
-type framebuffer_target() ::
    framebuffer
.
-doc "The OpenGL `string_name` enum.".
-type string_name() ::
    version |
    shading_language_version |
    extensions |
    renderer |
    vendor
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
-doc "The OpenGL `front_face_direction` enum.".
-type front_face_direction() ::
    cw |
    ccw
.
-doc "The OpenGL `state_parameter_name` enum.".
-type state_parameter_name() ::
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
-doc "The OpenGL `buffer_parameter_name` enum.".
-type buffer_parameter_name() ::
    buffer_size |
    buffer_usage
.
-doc "The OpenGL `texture_mag_filter` enum.".
-type texture_mag_filter() ::
    nearest |
    linear
.
-doc "The OpenGL `blend_equation_mode` enum.".
-type blend_equation_mode() ::
    func_add |
    func_subtract |
    func_reverse_subtract
.
-doc "The OpenGL `texture_wrap_mode` enum.".
-type texture_wrap_mode() ::
    mirrored_repeat |
    clamp_to_edge |
    repeat
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
-doc "The OpenGL `shader_type` enum.".
-type shader_type() ::
    fragment_shader |
    vertex_shader
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
-doc "The OpenGL `buffer_target` enum.".
-type buffer_target() ::
    array_buffer |
    element_array_buffer
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
-doc "The OpenGL `renderbuffer_parameter_name` enum.".
-type renderbuffer_parameter_name() ::
    renderbuffer_blue_size |
    renderbuffer_alpha_size |
    renderbuffer_green_size |
    renderbuffer_red_size |
    renderbuffer_width |
    renderbuffer_stencil_size |
    renderbuffer_height |
    renderbuffer_internal_format |
    renderbuffer_depth_size
.
-doc "The OpenGL `uniform_type` enum.".
-type uniform_type() ::
    sampler_cube |
    int_vec4 |
    float_mat4 |
    bool_vec3 |
    float_vec2 |
    sampler_2d |
    float_vec3 |
    float |
    float_mat2 |
    float_vec4 |
    bool_vec4 |
    int_vec3 |
    bool |
    bool_vec2 |
    int |
    unsigned_int |
    float_mat3 |
    int_vec2
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
-doc "The OpenGL `shader_precision_type` enum.".
-type shader_precision_type() ::
    high_int |
    medium_float |
    low_float |
    medium_int |
    low_int |
    high_float
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
-doc "The OpenGL `hint_target` enum.".
-type hint_target() ::
    generate_mipmap_hint
.
-doc "The OpenGL `triangle_face` enum.".
-type triangle_face() ::
    front |
    back |
    front_and_back
.
-doc "The OpenGL `vertex_attrib_parameter_name` enum.".
-type vertex_attrib_parameter_name() ::
    vertex_attrib_array_enabled |
    current_vertex_attrib |
    vertex_attrib_array_type |
    vertex_attrib_array_normalized |
    vertex_attrib_array_stride |
    vertex_attrib_array_buffer_binding |
    vertex_attrib_array_size
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
-doc "The OpenGL `buffer_usage` enum.".
-type buffer_usage() ::
    dynamic_draw |
    static_draw |
    stream_draw
.
-doc "The OpenGL `framebuffer_attachment` enum.".
-type framebuffer_attachment() ::
    color_attachment0 |
    depth_attachment |
    stencil_attachment
.
-doc "The OpenGL `draw_elements_type` enum.".
-type draw_elements_type() ::
    unsigned_byte |
    unsigned_int |
    unsigned_short
.
-doc "The OpenGL `renderbuffer_target` enum.".
-type renderbuffer_target() ::
    renderbuffer
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
-doc "The OpenGL `hint_mode` enum.".
-type hint_mode() ::
    fastest |
    dont_care |
    nicest
.
-doc "The OpenGL `framebuffer_attachment_parameter_name` enum.".
-type framebuffer_attachment_parameter_name() ::
    framebuffer_attachment_texture_level |
    framebuffer_attachment_object_type |
    framebuffer_attachment_object_name |
    framebuffer_attachment_texture_cube_map_face
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
-doc "The OpenGL `texture_parameter_name` enum.".
-type texture_parameter_name() ::
    texture_wrap_t |
    texture_mag_filter |
    texture_wrap_s |
    texture_min_filter
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
-doc "The OpenGL `pixel_store_parameter` enum.".
-type pixel_store_parameter() ::
    pack_alignment |
    unpack_alignment
.
-doc "The OpenGL `framebuffer_status` enum.".
-type framebuffer_status() ::
    framebuffer_incomplete_attachment |
    framebuffer_incomplete_missing_attachment |
    framebuffer_unsupported |
    framebuffer_complete
.

-doc "The OpenGL `clear_buffer_mask` bitfield.".
-type clear_buffer_mask() :: [
    depth_buffer_bit |
    color_buffer_bit |
    stencil_buffer_bit
].

-nifs([glDisable_raw/1]).
-nifs([glGetProgramiv_raw/2]).
-nifs([glTexSubImage2D_raw/9]).
-nifs([glEnableVertexAttribArray_raw/1]).
-nifs([glClearStencil_raw/1]).
-nifs([glGetProgramivInteger_raw/2]).
-nifs([glBindAttribLocation_raw/3]).
-nifs([glGetProgramInfoLog_raw/2]).
-nifs([glGetShaderPrecisionFormat_raw/2]).
-nifs([glGetIntegervInteger_raw/1]).
-nifs([glDeleteRenderbuffers_raw/2]).
-nifs([glStencilOp_raw/3]).
-nifs([glIsRenderbuffer_raw/1]).
-nifs([glFlush_raw/0]).
-nifs([glCreateShader_raw/1]).
-nifs([glVertexAttribPointer_raw/6]).
-nifs([glDrawElements_raw/4]).
-nifs([glPolygonOffset_raw/2]).
-nifs([glGetShaderivInteger_raw/2]).
-nifs([glStencilMask_raw/1]).
-nifs([glDisableVertexAttribArray_raw/1]).
-nifs([glClearDepthf_raw/1]).
-nifs([glLinkProgram_raw/1]).
-nifs([glCompileShader_raw/1]).
-nifs([glDetachShader_raw/2]).
-nifs([glBufferData_raw/4]).
-nifs([glAttachShader_raw/2]).
-nifs([glGenerateMipmap_raw/1]).
-nifs([glTexParameterf_raw/3]).
-nifs([glTexParameterfv_raw/3]).
-nifs([glTexParameteriv_raw/3]).
-nifs([glGetIntegervBoolean_raw/1]).
-nifs([glGetIntegerv_raw/1]).
-nifs([glCheckFramebufferStatus_raw/1]).
-nifs([glIsProgram_raw/1]).
-nifs([glIsShader_raw/1]).
-nifs([glGenTextures_raw/1]).
-nifs([glGenRenderbuffers_raw/1]).
-nifs([glShaderBinary_raw/4]).
-nifs([glGetActiveAttrib_raw/3]).
-nifs([glValidateProgram_raw/1]).
-nifs([glCopyTexImage2D_raw/8]).
-nifs([glStencilMaskSeparate_raw/2]).
-nifs([glScissor_raw/4]).
-nifs([glTexImage2D_raw/9]).
-nifs([glGetAttribLocation_raw/2]).
-nifs([glGetVertexAttribfv_raw/3]).
-nifs([glGetVertexAttribiv_raw/3]).
-nifs([glGetError_raw/0]).
-nifs([glBindTexture_raw/2]).
-nifs([glDeleteShader_raw/1]).
-nifs([glDepthRangef_raw/2]).
-nifs([glUniform1f_raw/2]).
-nifs([glUniform1fv_raw/3]).
-nifs([glUniform1i_raw/2]).
-nifs([glUniform1iv_raw/3]).
-nifs([glUniform2f_raw/3]).
-nifs([glUniform2fv_raw/3]).
-nifs([glUniform2i_raw/3]).
-nifs([glUniform2iv_raw/3]).
-nifs([glUniform3f_raw/4]).
-nifs([glUniform3fv_raw/3]).
-nifs([glUniform3i_raw/4]).
-nifs([glUniform3iv_raw/3]).
-nifs([glUniform4f_raw/5]).
-nifs([glUniform4fv_raw/3]).
-nifs([glUniform4i_raw/5]).
-nifs([glUniform4iv_raw/3]).
-nifs([glStencilFunc_raw/3]).
-nifs([glTexParameteri_raw/3]).
-nifs([glDrawArrays_raw/3]).
-nifs([glFramebufferTexture2D_raw/5]).
-nifs([glDeleteTextures_raw/2]).
-nifs([glLineWidth_raw/1]).
-nifs([glDepthMask_raw/1]).
-nifs([glBlendEquationSeparate_raw/2]).
-nifs([glViewport_raw/4]).
-nifs([glCompressedTexSubImage2D_raw/9]).
-nifs([glBindBuffer_raw/2]).
-nifs([glUniformMatrix2fv_raw/4]).
-nifs([glUniformMatrix3fv_raw/4]).
-nifs([glUniformMatrix4fv_raw/4]).
-nifs([glGetShaderSource_raw/2]).
-nifs([glSampleCoverage_raw/2]).
-nifs([glStencilOpSeparate_raw/4]).
-nifs([glBlendFunc_raw/2]).
-nifs([glDeleteFramebuffers_raw/2]).
-nifs([glHint_raw/2]).
-nifs([glGetBooleanv_raw/2]).
-nifs([glBlendColor_raw/4]).
-nifs([glDeleteBuffers_raw/2]).
-nifs([glGetFramebufferAttachmentParameteriv_raw/4]).
-nifs([glReleaseShaderCompiler_raw/0]).
-nifs([glPixelStorei_raw/2]).
-nifs([glShaderSource_raw/2]).
-nifs([glClear_raw/1]).
-nifs([glFramebufferRenderbuffer_raw/4]).
-nifs([glGetBufferParameteriv_raw/3]).
-nifs([glCopyTexSubImage2D_raw/8]).
-nifs([glGetActiveUniform_raw/3]).
-nifs([glRenderbufferStorage_raw/4]).
-nifs([glStencilFuncSeparate_raw/4]).
-nifs([glGetIntegervValues_raw/2]).
-nifs([glDepthFunc_raw/1]).
-nifs([glGenFramebuffers_raw/1]).
-nifs([glGetFloatv_raw/2]).
-nifs([glColorMask_raw/4]).
-nifs([glGetAttachedShaders_raw/2]).
-nifs([glIsTexture_raw/1]).
-nifs([glIsFramebuffer_raw/1]).
-nifs([glFrontFace_raw/1]).
-nifs([glBlendEquation_raw/1]).
-nifs([glGetString_raw/1]).
-nifs([glGetShaderInfoLog_raw/2]).
-nifs([glEnable_raw/1]).
-nifs([glGetTexParameterfv_raw/3]).
-nifs([glGetTexParameteriv_raw/3]).
-nifs([glIsBuffer_raw/1]).
-nifs([glBlendFuncSeparate_raw/4]).
-nifs([glBindFramebuffer_raw/2]).
-nifs([glBindRenderbuffer_raw/2]).
-nifs([glClearColor_raw/4]).
-nifs([glIsEnabled_raw/1]).
-nifs([glVertexAttrib1f_raw/2]).
-nifs([glVertexAttrib2f_raw/3]).
-nifs([glVertexAttrib3f_raw/4]).
-nifs([glVertexAttrib4f_raw/5]).
-nifs([glGenBuffers_raw/1]).
-nifs([glGetUniformfv_raw/3]).
-nifs([glGetUniformiv_raw/3]).
-nifs([glBufferSubData_raw/4]).
-nifs([glActiveTexture_raw/1]).
-nifs([glGetShaderiv_raw/2]).
-nifs([glFinish_raw/0]).
-nifs([glGetRenderbufferParameteriv_raw/3]).
-nifs([glCreateProgram_raw/0]).
-nifs([glCompressedTexImage2D_raw/8]).
-nifs([glCullFace_raw/1]).
-nifs([glUseProgram_raw/1]).
-nifs([glReadPixels_raw/7]).
-nifs([glDeleteProgram_raw/1]).
-nifs([glGetUniformLocation_raw/2]).

-on_load(init_nif/0).

init_nif() ->
    % The OpenGL NIF module depends on the EGL NIF module, so we compute its
    % location first, then pass it to the OpenGL NIF loader.
    EGLPrivDir = case code:priv_dir(egl) of
        {error, bad_name} ->
            code:priv_dir(egl_1_5);
        EGLDir ->
            EGLDir
    end,
    EGLNifLocation = filename:join(EGLPrivDir, "beam-egl") ++ ".so",
    LibName = "beam-gl",
    SoName = case code:priv_dir(?MODULE) of
        {error, bad_name} ->
            case filelib:is_dir(filename:join(["..", priv])) of
                true ->
                    filename:join(["..", priv, LibName]);
                _ ->
                    filename:join([priv, LibName])
            end;
        PrivDir ->
            filename:join(PrivDir, LibName)
    end,
    erlang:load_nif(SoName, EGLNifLocation).

-doc """
Return all OpenGL enum groups.

It returns the name of all OpenGL enum groups. The names can be used as an
input for the `enums_/1` function.

```erlang
[
    front_face_direction,
    % ...
    triangle_face
] = gl:enum_groups_().
```

Also see the `?GL_ENUM_GROUPS_` macro.
""".
-spec enum_groups_() -> [atom()].
enum_groups_() ->
    ?GL_ENUM_GROUPS_.

-doc """
Return the OpenGL enums of a given group.

It returns the list of OpenGL enum names of a given group.

```erlang
[
    front_and_back,
    front,
    back
] = gl:enums_(triangle_face).
```

Also see the `?GL_ENUM_GROUPS_` macro.
""".
-spec enums_(atom()) -> [atom()].
enums_(EnumGroup) ->
    maps:get(EnumGroup, ?GL_ENUMS_).

-doc """
Return the raw value of an OpenGL enum.

It returns the raw integer value of an OpenGL enum.

```erlang
16#0408 = gl:enum_value_(front_and_back).
```

Also see the `?GL_ENUM_GROUPS_` macro.
""".
-spec enum_value_(atom()) -> non_neg_integer().
enum_value_(Enum) ->
    maps:get(Enum, ?GL_ENUM_VALUE_).

-doc """
Return the possible OpenGL enums of a given raw value.

It returns the possible OpenGL enums of a given raw value.

```erlang
[foo, bar] = gl:value_enums_(16#0409).
```

> It's useful when an OpenGL function returns a raw value instead of an OpenGL
> enum such as with the `gl:get/x` function.

Also see the `?GL_VALUE_ENUMS_` macro.
""".
-spec value_enums_(non_neg_integer()) -> [atom()].
value_enums_(Value) ->
    maps:get(Value, ?GL_VALUE_ENUMS_).

-doc """
Return the OpenGL enum of a given raw value and the enum group.

It returns the OpenGL enum of a given raw value and the enum group.

```erlang
bar = gl:value_enums_(16#0409, foo).
```

> It's useful when an OpenGL function returns a raw value instead of an OpenGL
> enum such as with the `gl:get/x` function.

Also see the `?GL_VALUE_ENUM_` macro.
""".
-spec value_enum_(non_neg_integer(), atom()) -> atom().
value_enum_(Value, EnumGroup) ->
    maps:get({Value, EnumGroup}, ?GL_VALUE_ENUM_).

-doc """
Disable server-side GL capabilities.

It implements the `glDisable` function

```
gl:disable(scissor_test).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDisable) for more information.
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

    ?CALL_RAW_FUNC(glDisable_raw(NewCap)).

-doc """
Return whether a program object's last link succeeded.

It implements the `glGetProgramiv` function

```
{ok, true} = gl:get_program_link_status(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramiv) for more information.
""".
-spec get_program_link_status(Program :: program()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_program_link_status(Program) ->

    ?CALL_RAW_FUNC(glGetProgramiv_raw(Program, ?GL_LINK_STATUS)).

-doc """
Specify a two-dimensional texture subimage.

It implements the `glTexSubImage2D` function

```
ok = gl:tex_sub_image_2d(texture_2d, 0, 0, 0, 1, 1, rgba, unsigned_byte, <<0, 255, 0, 255>>).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glTexSubImage2D) for more information.
""".
-spec tex_sub_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: iodata()
) -> ok | {error, atom()}.
tex_sub_image_2d(Target, Level, OffsetX, OffsetY, Width, Height, Format, Type, Pixels) ->
    Pixels0 = iolist_to_binary(Pixels),
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

    ?CALL_RAW_FUNC(glTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, Width, Height, NewFormat, NewType, Pixels0)).

-doc """
Enable a generic vertex attribute array.

It implements the `glEnableVertexAttribArray` function

```
ok = gl:enable_vertex_attrib_array(0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glEnableVertexAttribArray) for more information.
""".
-spec enable_vertex_attrib_array(Index :: gl:uint()) -> ok | {error, atom()}.
enable_vertex_attrib_array(Index) ->

    ?CALL_RAW_FUNC(glEnableVertexAttribArray_raw(Index)).

-doc """
Specify the clear value for the stencil buffer.

It implements the `glClearStencil` function

```
gl:clear_stencil(0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glClearStencil) for more information.
""".
-spec clear_stencil(Value :: gl:int()) -> ok | {error, atom()}.
clear_stencil(Value) ->

    ?CALL_RAW_FUNC(glClearStencil_raw(Value)).

-doc """
Return the number of active uniform variables in a program.

It implements the `glGetProgramiv` function

```
{ok, Count} = gl:get_program_active_uniforms_count(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramiv) for more information.
""".
-spec get_program_active_uniforms_count(Program :: program()) -> {ok, Count :: gl:int()} | {error, atom()}.
get_program_active_uniforms_count(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ACTIVE_UNIFORMS)).

-doc """
Bind a generic vertex attribute index to a named attribute variable before linking.

It implements the `glBindAttribLocation` function

```
ok = gl:bind_attrib_location(Program, 0, [<<"pos">>, "ition"]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBindAttribLocation) for more information.
""".
-spec bind_attrib_location(
    Program :: program(),
    Index :: gl:uint(),
    Name :: iodata()
) -> ok | {error, atom()}.
bind_attrib_location(Program, Index, Name) ->
    Name0 = iolist_to_binary(Name),

    ?CALL_RAW_FUNC(glBindAttribLocation_raw(Program, Index, Name0)).

-doc """
Returns the information log for a program object.

It implements the `glGetProgramInfoLog` function

```
{ok, InfoLog} = gl:get_program_info_log(Program, 1024).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramInfoLog) for more information.
""".
-spec get_program_info_log(
    Program :: program(),
    MaxLength :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_program_info_log(Program, MaxLength) ->

    ?CALL_RAW_FUNC(glGetProgramInfoLog_raw(Program, MaxLength)).

-doc """
Return the numeric precision range and precision for a shader precision type.

It implements the `glGetShaderPrecisionFormat` function

```
{ok, RangeMin, RangeMax, Precision} =
    gl:get_shader_precision_format(fragment_shader, high_float).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetShaderPrecisionFormat) for more information.
""".
-spec get_shader_precision_format(
    ShaderType :: shader_type(),
    PrecisionType :: shader_precision_type()
) -> {ok, RangeMin :: gl:int(), RangeMax :: gl:int(), Precision :: gl:int()} | {error, atom()}.
get_shader_precision_format(ShaderType, PrecisionType) ->
    NewPrecisionType = case PrecisionType of
        high_float -> ?GL_HIGH_FLOAT;
        low_int -> ?GL_LOW_INT;
        medium_int -> ?GL_MEDIUM_INT;
        low_float -> ?GL_LOW_FLOAT;
        medium_float -> ?GL_MEDIUM_FLOAT;
        high_int -> ?GL_HIGH_INT
    end,
    NewShaderType = case ShaderType of
        vertex_shader -> ?GL_VERTEX_SHADER;
        fragment_shader -> ?GL_FRAGMENT_SHADER
    end,

    ?CALL_RAW_FUNC(glGetShaderPrecisionFormat_raw(NewShaderType, NewPrecisionType)).

-doc """
Return the number of supported shader binary formats.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_num_shader_binary_formats().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_num_shader_binary_formats() -> {ok, Count :: gl:int()} | {error, atom()}.
get_num_shader_binary_formats() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_NUM_SHADER_BINARY_FORMATS)).

-doc """
Delete renderbuffer objects.

It implements the `glDeleteRenderbuffers` function

```
gl:delete_renderbuffers([Renderbuffer]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteRenderbuffers) for more information.
""".
-spec delete_renderbuffers(Renderbuffers :: [renderbuffer()]) -> ok | {error, atom()}.
delete_renderbuffers(Renderbuffers) ->
    N = length(Renderbuffers),
    NewRenderbuffers = << <<ID:32/native>> || ID <- Renderbuffers >>,
    ?CALL_RAW_FUNC(glDeleteRenderbuffers_raw(N, NewRenderbuffers)).

-doc """
Set front and back stencil test actions.

It implements the `glStencilOp` function

```
gl:stencil_op(keep, keep, replace).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilOp) for more information.
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

    ?CALL_RAW_FUNC(glStencilOp_raw(NewFail, NewZFail, NewZPass)).

-doc """
Determine if a name corresponds to a renderbuffer object.

It implements the `glIsRenderbuffer` function

```
{ok, true} = gl:is_renderbuffer(Renderbuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsRenderbuffer) for more information.
""".
-spec is_renderbuffer(Renderbuffer :: renderbuffer()) -> {ok, IsRenderbuffer :: gl:boolean()} | {error, atom()}.
is_renderbuffer(Renderbuffer) ->

    ?CALL_RAW_FUNC(glIsRenderbuffer_raw(Renderbuffer)).

-doc """
Force execution of GL commands in finite time.

It implements the `glFlush` function

```
gl:flush().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glFlush) for more information.
""".
-spec flush() -> ok | {error, atom()}.
flush() ->

    ?CALL_RAW_FUNC(glFlush_raw()).

-doc """
Creates a shader object.

It implements the `glCreateShader` function

```
{ok, Shader} = gl:create_shader(vertex_shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCreateShader) for more information.
""".
-spec create_shader(Type :: shader_type()) -> {ok, Shader :: shader()} | {error, atom()}.
create_shader(Type) ->
    NewType = case Type of
        vertex_shader -> ?GL_VERTEX_SHADER;
        fragment_shader -> ?GL_FRAGMENT_SHADER
    end,

    ?CALL_RAW_FUNC(glCreateShader_raw(NewType)).

-doc """
Return the number of shader objects attached to a program.

It implements the `glGetProgramiv` function

```
{ok, Count} = gl:get_program_attached_shaders_count(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramiv) for more information.
""".
-spec get_program_attached_shaders_count(Program :: program()) -> {ok, Count :: gl:int()} | {error, atom()}.
get_program_attached_shaders_count(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ATTACHED_SHADERS)).

-doc """
Define an array of generic vertex attribute data using the currently bound array buffer.

It implements the `glVertexAttribPointer` function

```
ok = gl:vertex_attrib_pointer(0, 2, float, false, 0, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glVertexAttribPointer) for more information.
""".
-spec vertex_attrib_pointer(
    Index :: gl:uint(),
    Size :: gl:int(),
    Type :: vertex_attrib_pointer_type(),
    Normalized :: gl:boolean(),
    Stride :: gl:sizei(),
    Offset :: gl:offset()
) -> ok | {error, atom()}.
vertex_attrib_pointer(Index, Size, Type, Normalized, Stride, Offset) ->
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

    ?CALL_RAW_FUNC(glVertexAttribPointer_raw(Index, Size, NewType, Normalized, Stride, Offset)).

-doc """
Return the maximum number of fragment uniform vectors.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_fragment_uniform_vectors().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_max_fragment_uniform_vectors() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_fragment_uniform_vectors() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAGMENT_UNIFORM_VECTORS)).

-doc """
Render primitives using indices from the bound element array buffer.

It implements the `glDrawElements` function

```
ok = gl:draw_elements(points, 1, unsigned_byte, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDrawElements) for more information.
""".
-spec draw_elements(
    Mode :: primitive_type(),
    Count :: gl:sizei(),
    Type :: draw_elements_type(),
    Offset :: gl:offset()
) -> ok | {error, atom()}.
draw_elements(Mode, Count, Type, Offset) ->
    NewType = case Type of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE
    end,
    NewMode = case Mode of
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        lines -> ?GL_LINES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP
    end,

    ?CALL_RAW_FUNC(glDrawElements_raw(NewMode, Count, NewType, Offset)).

-doc """
Set the scale and units used to calculate depth values.

It implements the `glPolygonOffset` function

```
gl:polygon_offset(1.0, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glPolygonOffset) for more information.
""".
-spec polygon_offset(
    Factor :: gl:float(),
    Units :: gl:float()
) -> ok | {error, atom()}.
polygon_offset(Factor, Units) ->

    ?CALL_RAW_FUNC(glPolygonOffset_raw(Factor, Units)).

-doc """
Return the shader source length.

It implements the `glGetShaderiv` function

```
{ok, Length} = gl:get_shader_source_length(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetShaderiv) for more information.
""".
-spec get_shader_source_length(Shader :: shader()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_shader_source_length(Shader) ->

    ?CALL_RAW_FUNC(glGetShaderivInteger_raw(Shader, ?GL_SHADER_SOURCE_LENGTH)).

-doc """
Control the front and back writing of individual bits in the stencil planes.

It implements the `glStencilMask` function

```
gl:stencil_mask(16#FF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilMask) for more information.
""".
-spec stencil_mask(Mask :: gl:uint()) -> ok | {error, atom()}.
stencil_mask(Mask) ->

    ?CALL_RAW_FUNC(glStencilMask_raw(Mask)).

-doc """
Disable a generic vertex attribute array.

It implements the `glDisableVertexAttribArray` function

```
ok = gl:disable_vertex_attrib_array(0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDisableVertexAttribArray) for more information.
""".
-spec disable_vertex_attrib_array(Index :: gl:uint()) -> ok | {error, atom()}.
disable_vertex_attrib_array(Index) ->

    ?CALL_RAW_FUNC(glDisableVertexAttribArray_raw(Index)).

-doc """
Return whether a program object's last validation succeeded.

It implements the `glGetProgramiv` function

```
{ok, true} = gl:get_program_validation_status(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramiv) for more information.
""".
-spec get_program_validation_status(Program :: program()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_program_validation_status(Program) ->

    ?CALL_RAW_FUNC(glGetProgramiv_raw(Program, ?GL_VALIDATE_STATUS)).

-doc """
Specify the clear value for the depth buffer.

It implements the `glClearDepthf` function

```
gl:clear_depth(1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glClearDepthf) for more information.
""".
-spec clear_depth(Depth :: gl:float()) -> ok | {error, atom()}.
clear_depth(Depth) ->

    ?CALL_RAW_FUNC(glClearDepthf_raw(Depth)).

-doc """
Links a program object.

It implements the `glLinkProgram` function

```
ok = gl:link_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glLinkProgram) for more information.
""".
-spec link_program(Program :: program()) -> ok | {error, atom()}.
link_program(Program) ->

    ?CALL_RAW_FUNC(glLinkProgram_raw(Program)).

-doc """
Compiles a shader object.

It implements the `glCompileShader` function

```
ok = gl:compile_shader(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCompileShader) for more information.
""".
-spec compile_shader(Shader :: shader()) -> ok | {error, atom()}.
compile_shader(Shader) ->

    ?CALL_RAW_FUNC(glCompileShader_raw(Shader)).

-doc """
Detaches a shader object from a program object.

It implements the `glDetachShader` function

```
ok = gl:detach_shader(Program, Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDetachShader) for more information.
""".
-spec detach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
detach_shader(Program, Shader) ->

    ?CALL_RAW_FUNC(glDetachShader_raw(Program, Shader)).

-doc """
Create and initialize a buffer object's data store.

It implements the `glBufferData` function

```
ok = gl:buffer_data(array_buffer, <<0, 1, 2, 3>>, static_draw).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBufferData) for more information.
""".
-spec buffer_data(
    Target :: buffer_target(),
    DataOrSize :: iodata() | non_neg_integer(),
    Usage :: buffer_usage()
) -> ok | {error, atom()}.
buffer_data(Target, DataOrSize, Usage) ->
    NewUsage = case Usage of
        stream_draw -> ?GL_STREAM_DRAW;
        static_draw -> ?GL_STATIC_DRAW;
        dynamic_draw -> ?GL_DYNAMIC_DRAW
    end,
    {Size, Data} = case DataOrSize of
        Size0 when is_integer(Size0), Size0 >= 0 ->
            {Size0, undefined};
        _ ->
            Data0 = iolist_to_binary(DataOrSize),
            {byte_size(Data0), Data0}
    end,    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER
    end,

    ?CALL_RAW_FUNC(glBufferData_raw(NewTarget, Size, Data, NewUsage)).

-doc """
Return the shader info-log length.

It implements the `glGetShaderiv` function

```
{ok, Length} = gl:get_shader_info_log_length(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetShaderiv) for more information.
""".
-spec get_shader_info_log_length(Shader :: shader()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_shader_info_log_length(Shader) ->

    ?CALL_RAW_FUNC(glGetShaderivInteger_raw(Shader, ?GL_INFO_LOG_LENGTH)).

-doc """
Attaches a shader object to a program object.

It implements the `glAttachShader` function

```
ok = gl:attach_shader(Program, Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glAttachShader) for more information.
""".
-spec attach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
attach_shader(Program, Shader) ->

    ?CALL_RAW_FUNC(glAttachShader_raw(Program, Shader)).

-doc """
Generate mipmaps for the texture bound to a texture target.

It implements the `glGenerateMipmap` function

```
gl:generate_mipmap(texture_2d).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGenerateMipmap) for more information.
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

    ?CALL_RAW_FUNC(glGenerateMipmap_raw(NewTarget)).

-type tex_parameter_value() ::
    gl:float() |
    [gl:float()] |
    [gl:int()]
.

-doc """
Set texture parameters.

It implements the following OpenGL commands:

- `glTexParameteriv`
- `glTexParameterfv`
- `glTexParameterf`

```
ok = gl:tex_parameter(f, texture_2d, texture_wrap_s, 33071.0).
ok = gl:tex_parameter(f, texture_2d, texture_wrap_t, [33071.0]).
ok = gl:tex_parameter(i, texture_2d, texture_wrap_s, [16#812F]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glTexParameter) for more information.
""".
-spec tex_parameter(
    Type :: f | i,
    Target :: texture_target(),
    ParamName :: texture_parameter_name(),
    Param :: tex_parameter_value()
) -> ok | {error, atom()}.
tex_parameter(i, Target, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
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

    ?CALL_RAW_FUNC(glTexParameteriv_raw(NewTarget, NewParamName, Param));
tex_parameter(f, Target, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
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

    ?CALL_RAW_FUNC(glTexParameterfv_raw(NewTarget, NewParamName, Param));
tex_parameter(f, Target, ParamName, Param) ->
    NewParamName = case ParamName of
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
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

    ?CALL_RAW_FUNC(glTexParameterf_raw(NewTarget, NewParamName, Param)).

-doc """
Return whether a shader compiler is supported.

It implements the `glGetIntegerv` function

```
{ok, Supported} = gl:get_shader_compiler_supported().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_shader_compiler_supported() -> {ok, Supported :: gl:boolean()} | {error, atom()}.
get_shader_compiler_supported() ->

    ?CALL_RAW_FUNC(glGetIntegervBoolean_raw(?GL_SHADER_COMPILER)).

-doc """
Return the number of active attribute variables in a program.

It implements the `glGetProgramiv` function

```
{ok, Count} = gl:get_program_active_attributes_count(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramiv) for more information.
""".
-spec get_program_active_attributes_count(Program :: program()) -> {ok, Count :: gl:int()} | {error, atom()}.
get_program_active_attributes_count(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ACTIVE_ATTRIBUTES)).

-doc """
Return the sample count for the current framebuffer.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_samples_count().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_samples_count() -> {ok, Count :: gl:int()} | {error, atom()}.
get_samples_count() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_SAMPLES)).

-doc """
Check the completeness status of a framebuffer.

It implements the `glCheckFramebufferStatus` function

```
{ok, framebuffer_complete} = gl:check_framebuffer_status(framebuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCheckFramebufferStatus) for more information.
""".
-spec check_framebuffer_status(Target :: framebuffer_target()) -> {ok, Status :: framebuffer_status()} | {error, atom()}.
check_framebuffer_status(Target) ->
    NewTarget = case Target of
        framebuffer -> ?GL_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glCheckFramebufferStatus_raw(NewTarget)).

-doc """
Determines if a name corresponds to a program object.

It implements the `glIsProgram` function

```
{ok, true} = gl:is_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsProgram) for more information.
""".
-spec is_program(Program :: program()) -> {ok, IsProgram :: gl:boolean()} | {error, atom()}.
is_program(Program) ->

    ?CALL_RAW_FUNC(glIsProgram_raw(Program)).

-doc """
Determines if a name corresponds to a shader object.

It implements the `glIsShader` function

```
{ok, true} = gl:is_shader(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsShader) for more information.
""".
-spec is_shader(Shader :: shader()) -> {ok, IsShader :: gl:boolean()} | {error, atom()}.
is_shader(Shader) ->

    ?CALL_RAW_FUNC(glIsShader_raw(Shader)).

-doc """
Generate texture names.

It implements the `glGenTextures` function

```
{ok, [Texture]} = gl:gen_textures(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGenTextures) for more information.
""".
-spec gen_textures(N :: pos_integer()) -> {ok, Textures :: [texture()]} | {error, atom()}.
gen_textures(N) ->

    ?CALL_RAW_FUNC(glGenTextures_raw(N)).

-doc """
Generate renderbuffer object names.

It implements the `glGenRenderbuffers` function

```
{ok, [Renderbuffer]} = gl:gen_renderbuffers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGenRenderbuffers) for more information.
""".
-spec gen_renderbuffers(N :: pos_integer()) -> {ok, Renderbuffers :: [renderbuffer()]} | {error, atom()}.
gen_renderbuffers(N) ->

    ?CALL_RAW_FUNC(glGenRenderbuffers_raw(N)).

-doc """
Load a runtime-format shader binary into one or more shader objects.

It implements the `glShaderBinary` function

```
ok = gl:shader_binary([Shader], BinaryFormat, Binary).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glShaderBinary) for more information.
""".
-spec shader_binary(
    Shaders :: [shader()],
    BinaryFormat :: gl:uint(),
    Binary :: iodata()
) -> ok | {error, atom()}.
shader_binary(Shaders, BinaryFormat, Binary) ->
    Binary0 = iolist_to_binary(Binary),
    Length = byte_size(Binary0),

    ?CALL_RAW_FUNC(glShaderBinary_raw(Shaders, BinaryFormat, Binary0, Length)).

-doc """
Returns the size, type, and name of an active attribute variable for a program object.

It implements the `glGetActiveAttrib` function

```
{ok, Size, Type, Name} = gl:get_active_attrib(Program, 0, MaxLength).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetActiveAttrib) for more information.
""".
-spec get_active_attrib(
    Program :: program(),
    Index :: gl:uint(),
    MaxLength :: pos_integer()
) -> {ok, Size :: gl:int(), Type :: attribute_type(), Name :: binary()} | {error, atom()}.
get_active_attrib(Program, Index, MaxLength) ->

    ?CALL_RAW_FUNC(glGetActiveAttrib_raw(Program, Index, MaxLength)).

-doc """
Validates a program object against current OpenGL state.

It implements the `glValidateProgram` function

```
ok = gl:validate_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glValidateProgram) for more information.
""".
-spec validate_program(Program :: program()) -> ok | {error, atom()}.
validate_program(Program) ->

    ?CALL_RAW_FUNC(glValidateProgram_raw(Program)).

-doc """
Return the number of sample buffers for the current framebuffer.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_sample_buffers_count().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_sample_buffers_count() -> {ok, Count :: gl:int()} | {error, atom()}.
get_sample_buffers_count() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_SAMPLE_BUFFERS)).

-doc """
Copy pixels into a two-dimensional texture image.

It implements the `glCopyTexImage2D` function

```
gl:copy_tex_image_2d(texture_2d, 0, rgba, 0, 0, 1, 1, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCopyTexImage2D) for more information.
""".
-spec copy_tex_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Border :: gl:int()
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

    ?CALL_RAW_FUNC(glCopyTexImage2D_raw(NewTarget, Level, NewInternalFormat, X, Y, Width, Height, Border)).

-doc """
Control the front and/or back writing of individual bits in the stencil planes.

It implements the `glStencilMaskSeparate` function

```
gl:stencil_mask_separate(front_and_back, 16#FF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilMaskSeparate) for more information.
""".
-spec stencil_mask_separate(
    Face :: triangle_face(),
    Mask :: gl:uint()
) -> ok | {error, atom()}.
stencil_mask_separate(Face, Mask) ->
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    ?CALL_RAW_FUNC(glStencilMaskSeparate_raw(NewFace, Mask)).

-doc """
Define the scissor box.

It implements the `glScissor` function

```
gl:scissor(0, 0, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glScissor) for more information.
""".
-spec scissor(
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
) -> ok | {error, atom()}.
scissor(X, Y, Width, Height) ->

    ?CALL_RAW_FUNC(glScissor_raw(X, Y, Width, Height)).

-doc """
Specify a two-dimensional texture image.

It implements the `glTexImage2D` function

```
ok = gl:tex_image_2d(texture_2d, 0, rgba, 1, 1, 0, rgba, unsigned_byte, <<255, 0, 0, 255>>).
ok = gl:tex_image_2d(texture_2d, 0, rgba, 1, 1, 0, rgba, unsigned_byte, none).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glTexImage2D) for more information.
""".
-spec tex_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Border :: gl:int(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: iodata() | none
) -> ok | {error, atom()}.
tex_image_2d(Target, Level, InternalFormat, Width, Height, Border, Format, Type, Pixels) ->
    Pixels0 = case Pixels of
        none -> undefined;
        _ -> iolist_to_binary(Pixels)
    end,
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

    ?CALL_RAW_FUNC(glTexImage2D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Border, NewFormat, NewType, Pixels0)).

-doc """
Return the location of a named active attribute variable.

It implements the `glGetAttribLocation` function

```
{ok, Location} = gl:get_attrib_location(Program, [<<"pos">>, "ition"]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetAttribLocation) for more information.
""".
-spec get_attrib_location(
    Program :: program(),
    Name :: iodata()
) -> {ok, Location :: gl:int()} | {error, atom()}.
get_attrib_location(Program, Name) ->
    Name0 = iolist_to_binary(Name),

    ?CALL_RAW_FUNC(glGetAttribLocation_raw(Program, Name0)).

-doc """
Return the maximum cube-map texture size.

It implements the `glGetIntegerv` function

```
{ok, Size} = gl:get_max_cube_map_texture_size().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_max_cube_map_texture_size() -> {ok, Size :: gl:int()} | {error, atom()}.
get_max_cube_map_texture_size() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_CUBE_MAP_TEXTURE_SIZE)).

-type get_vertex_attrib_value() ::
    gl:float() |
    gl:int()
.

-doc """
Read generic vertex attribute parameter values.

It implements the following OpenGL commands:

- `glGetVertexAttribiv`
- `glGetVertexAttribfv`

```
{ok, Values} = gl:get_vertex_attrib(f, 0, current_vertex_attrib, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetVertexAttrib) for more information.
""".
-spec get_vertex_attrib(
    Type :: f | i,
    Index :: gl:uint(),
    ParamName :: vertex_attrib_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [get_vertex_attrib_value()]} | {error, atom()}.
get_vertex_attrib(i, Index, ParamName, Count) ->
    NewParamName = case ParamName of
        vertex_attrib_array_size -> ?GL_VERTEX_ATTRIB_ARRAY_SIZE;
        vertex_attrib_array_buffer_binding -> ?GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
        vertex_attrib_array_stride -> ?GL_VERTEX_ATTRIB_ARRAY_STRIDE;
        vertex_attrib_array_normalized -> ?GL_VERTEX_ATTRIB_ARRAY_NORMALIZED;
        vertex_attrib_array_type -> ?GL_VERTEX_ATTRIB_ARRAY_TYPE;
        current_vertex_attrib -> ?GL_CURRENT_VERTEX_ATTRIB;
        vertex_attrib_array_enabled -> ?GL_VERTEX_ATTRIB_ARRAY_ENABLED
    end,

    ?CALL_RAW_FUNC(glGetVertexAttribiv_raw(Index, NewParamName, Count));
get_vertex_attrib(f, Index, ParamName, Count) ->
    NewParamName = case ParamName of
        vertex_attrib_array_size -> ?GL_VERTEX_ATTRIB_ARRAY_SIZE;
        vertex_attrib_array_buffer_binding -> ?GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
        vertex_attrib_array_stride -> ?GL_VERTEX_ATTRIB_ARRAY_STRIDE;
        vertex_attrib_array_normalized -> ?GL_VERTEX_ATTRIB_ARRAY_NORMALIZED;
        vertex_attrib_array_type -> ?GL_VERTEX_ATTRIB_ARRAY_TYPE;
        current_vertex_attrib -> ?GL_CURRENT_VERTEX_ATTRIB;
        vertex_attrib_array_enabled -> ?GL_VERTEX_ATTRIB_ARRAY_ENABLED
    end,

    ?CALL_RAW_FUNC(glGetVertexAttribfv_raw(Index, NewParamName, Count)).

-doc """
Return error information.

It implements the `glGetError` function

```
{ok, no_error} = gl:get_error().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetError) for more information.
""".
-spec get_error() -> {ok, Code :: error_code()} | {error, atom()}.
get_error() ->

    ?CALL_RAW_FUNC_UNCHECKED(glGetError_raw()).

-doc """
Return the program info-log length.

It implements the `glGetProgramiv` function

```
{ok, Length} = gl:get_program_info_log_length(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramiv) for more information.
""".
-spec get_program_info_log_length(Program :: program()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_program_info_log_length(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_INFO_LOG_LENGTH)).

-doc """
Bind a named texture to a texturing target.

It implements the `glBindTexture` function

```
gl:bind_texture(texture_2d, Texture).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBindTexture) for more information.
""".
-spec bind_texture(
    Target :: texture_target(),
    Texture :: texture() | none
) -> ok | {error, atom()}.
bind_texture(Target, Texture) ->
    NewTexture = case Texture of
        none -> 0;
        Texture0 when is_integer(Texture0), Texture0 > 0 -> Texture0
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

    ?CALL_RAW_FUNC(glBindTexture_raw(NewTarget, NewTexture)).

-doc """
Deletes a shader object.

It implements the `glDeleteShader` function

```
ok = gl:delete_shader(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteShader) for more information.
""".
-spec delete_shader(Shader :: shader()) -> ok | {error, atom()}.
delete_shader(Shader) ->

    ?CALL_RAW_FUNC(glDeleteShader_raw(Shader)).

-doc """
Specify mapping of depth values from normalized device coordinates to window coordinates.

It implements the `glDepthRangef` function

```
gl:depth_range(0.0, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDepthRangef) for more information.
""".
-spec depth_range(
    Near :: gl:float(),
    Far :: gl:float()
) -> ok | {error, atom()}.
depth_range(Near, Far) ->

    ?CALL_RAW_FUNC(glDepthRangef_raw(Near, Far)).

-type uniform_value() ::
    gl:float() |
    [gl:float()] |
    gl:int() |
    [gl:int()] |
    vector2(gl:float()) |
    [vector2(gl:float())] |
    vector2(gl:int()) |
    [vector2(gl:int())] |
    vector3(gl:float()) |
    [vector3(gl:float())] |
    vector3(gl:int()) |
    [vector3(gl:int())] |
    vector4(gl:float()) |
    [vector4(gl:float())] |
    vector4(gl:int()) |
    [vector4(gl:int())]
.

-doc """
Set a scalar or vector uniform value for the current program.

It implements the following OpenGL commands:

- `glUniform4iv`
- `glUniform4i`
- `glUniform4fv`
- `glUniform4f`
- `glUniform3iv`
- `glUniform3i`
- `glUniform3fv`
- `glUniform3f`
- `glUniform2iv`
- `glUniform2i`
- `glUniform2fv`
- `glUniform2f`
- `glUniform1iv`
- `glUniform1i`
- `glUniform1fv`
- `glUniform1f`

```
ok = gl:uniform(f, Location, 1.0).
ok = gl:uniform(i, Location, 1).
ok = gl:uniform(f, Location, {1.0, 0.0, 0.0, 1.0}).
ok = gl:uniform(i, Location, {1, 0, 0, 1}).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glUniform) for more information.
""".
-spec uniform(
    Type :: f | i,
    Location :: gl:int(),
    Value :: uniform_value()
) -> ok | {error, atom()}.
uniform(i, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform4iv_raw(Location, Count, NewValue));
uniform(i, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glUniform4i_raw(Location, V1, V2, V3, V4));
uniform(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform4fv_raw(Location, Count, NewValue));
uniform(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glUniform4f_raw(Location, V1, V2, V3, V4));
uniform(i, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform3iv_raw(Location, Count, NewValue));
uniform(i, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glUniform3i_raw(Location, V1, V2, V3));
uniform(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform3fv_raw(Location, Count, NewValue));
uniform(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glUniform3f_raw(Location, V1, V2, V3));
uniform(i, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform2iv_raw(Location, Count, NewValue));
uniform(i, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glUniform2i_raw(Location, V1, V2));
uniform(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform2fv_raw(Location, Count, NewValue));
uniform(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glUniform2f_raw(Location, V1, V2));
uniform(i, Location, Value) when is_list(Value) ->
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform1iv_raw(Location, Count, Value));
uniform(i, Location, Value) ->

    ?CALL_RAW_FUNC(glUniform1i_raw(Location, Value));
uniform(f, Location, Value) when is_list(Value) ->
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform1fv_raw(Location, Count, Value));
uniform(f, Location, Value) ->

    ?CALL_RAW_FUNC(glUniform1f_raw(Location, Value)).

-doc """
Set front and back function and reference value for stencil testing.

It implements the `glStencilFunc` function

```
gl:stencil_func(always, 0, 16#FF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilFunc) for more information.
""".
-spec stencil_func(
    Function :: stencil_function(),
    Ref :: gl:int(),
    Mask :: gl:uint()
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

    ?CALL_RAW_FUNC(glStencilFunc_raw(NewFunction, Ref, Mask)).

-doc """
Set the texture wrap mode for the T coordinate.

It implements the `glTexParameteri` function

```
gl:tex_wrap_t(texture_2d, clamp_to_edge).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glTexParameteri) for more information.
""".
-spec tex_wrap_t(
    Target :: texture_target(),
    Mode :: texture_wrap_mode()
) -> ok | {error, atom()}.
tex_wrap_t(Target, Mode) ->
    NewMode = case Mode of
        repeat -> ?GL_REPEAT;
        clamp_to_edge -> ?GL_CLAMP_TO_EDGE;
        mirrored_repeat -> ?GL_MIRRORED_REPEAT
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

    ?CALL_RAW_FUNC(glTexParameteri_raw(NewTarget, ?GL_TEXTURE_WRAP_T, NewMode)).

-doc """
Render primitives from array data.

It implements the `glDrawArrays` function

```
ok = gl:draw_arrays(triangles, 0, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDrawArrays) for more information.
""".
-spec draw_arrays(
    Mode :: primitive_type(),
    First :: gl:int(),
    Count :: gl:sizei()
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

    ?CALL_RAW_FUNC(glDrawArrays_raw(NewMode, First, Count)).

-doc """
Return the maximum number of vertex texture image units.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_texture_image_units().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_max_vertex_texture_image_units() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_texture_image_units() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS)).

-doc """
Attach a two-dimensional texture image as a logical buffer of a framebuffer object.

It implements the `glFramebufferTexture2D` function

```
gl:framebuffer_texture_2d(framebuffer, color_attachment0, texture_2d, Texture, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glFramebufferTexture2D) for more information.
""".
-spec framebuffer_texture_2d(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    TextureTarget :: texture_target(),
    Texture :: texture(),
    Level :: gl:int()
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

    ?CALL_RAW_FUNC(glFramebufferTexture2D_raw(NewTarget, NewAttachment, NewTextureTarget, Texture, Level)).

-doc """
Delete named textures.

It implements the `glDeleteTextures` function

```
gl:delete_textures([Texture]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteTextures) for more information.
""".
-spec delete_textures(Textures :: [texture()]) -> ok | {error, atom()}.
delete_textures(Textures) ->
    N = length(Textures),
    NewTextures = << <<ID:32/native>> || ID <- Textures >>,
    ?CALL_RAW_FUNC(glDeleteTextures_raw(N, NewTextures)).

-doc """
Return the maximum number of varying vectors.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_varying_vectors().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_max_varying_vectors() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_varying_vectors() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VARYING_VECTORS)).

-doc """
Return the maximum combined number of texture image units.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_combined_texture_image_units().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_max_combined_texture_image_units() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_combined_texture_image_units() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS)).

-doc """
Set the texture minification filter.

It implements the `glTexParameteri` function

```
gl:tex_min_filter(texture_2d, nearest).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glTexParameteri) for more information.
""".
-spec tex_min_filter(
    Target :: texture_target(),
    Filter :: texture_min_filter()
) -> ok | {error, atom()}.
tex_min_filter(Target, Filter) ->
    NewFilter = case Filter of
        nearest_mipmap_nearest -> ?GL_NEAREST_MIPMAP_NEAREST;
        linear_mipmap_nearest -> ?GL_LINEAR_MIPMAP_NEAREST;
        linear_mipmap_linear -> ?GL_LINEAR_MIPMAP_LINEAR;
        linear -> ?GL_LINEAR;
        nearest -> ?GL_NEAREST;
        nearest_mipmap_linear -> ?GL_NEAREST_MIPMAP_LINEAR
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

    ?CALL_RAW_FUNC(glTexParameteri_raw(NewTarget, ?GL_TEXTURE_MIN_FILTER, NewFilter)).

-doc """
Set the texture magnification filter.

It implements the `glTexParameteri` function

```
gl:tex_mag_filter(texture_2d, nearest).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glTexParameteri) for more information.
""".
-spec tex_mag_filter(
    Target :: texture_target(),
    Filter :: texture_mag_filter()
) -> ok | {error, atom()}.
tex_mag_filter(Target, Filter) ->
    NewFilter = case Filter of
        linear -> ?GL_LINEAR;
        nearest -> ?GL_NEAREST
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

    ?CALL_RAW_FUNC(glTexParameteri_raw(NewTarget, ?GL_TEXTURE_MAG_FILTER, NewFilter)).

-doc """
Specify the width of rasterized lines.

It implements the `glLineWidth` function

```
gl:line_width(1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glLineWidth) for more information.
""".
-spec line_width(Width :: gl:float()) -> ok | {error, atom()}.
line_width(Width) ->

    ?CALL_RAW_FUNC(glLineWidth_raw(Width)).

-doc """
Enable or disable writing into the depth buffer.

It implements the `glDepthMask` function

```
gl:depth_mask(true).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDepthMask) for more information.
""".
-spec depth_mask(Flag :: gl:boolean()) -> ok | {error, atom()}.
depth_mask(Flag) ->

    ?CALL_RAW_FUNC(glDepthMask_raw(Flag)).

-doc """
Set the RGB blend equation and the alpha blend equation separately.

It implements the `glBlendEquationSeparate` function

```
gl:blend_equation_separate(func_add, func_add).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBlendEquationSeparate) for more information.
""".
-spec blend_equation_separate(
    ModeRGB :: blend_equation_mode(),
    ModeAlpha :: blend_equation_mode()
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

    ?CALL_RAW_FUNC(glBlendEquationSeparate_raw(NewModeRGB, NewModeAlpha)).

-doc """
Set the viewport.

It implements the `glViewport` function

```
gl:viewport(0, 0, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glViewport) for more information.
""".
-spec viewport(
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
) -> ok | {error, atom()}.
viewport(X, Y, Width, Height) ->

    ?CALL_RAW_FUNC(glViewport_raw(X, Y, Width, Height)).

-doc """
Specify a two-dimensional texture subimage in a compressed format.

It implements the `glCompressedTexSubImage2D` function

```
ok = gl:compressed_tex_sub_image_2d(texture_2d, 0, 0, 0, 4, 4, compressed_rgba, CompressedBytes).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCompressedTexSubImage2D) for more information.
""".
-spec compressed_tex_sub_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Format :: internal_format(),
    ImageData :: iodata()
) -> ok | {error, atom()}.
compressed_tex_sub_image_2d(Target, Level, OffsetX, OffsetY, Width, Height, Format, ImageData) ->
    ImageData0 = iolist_to_binary(ImageData),
    ImageSize = byte_size(ImageData0),
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

    ?CALL_RAW_FUNC(glCompressedTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, Width, Height, NewFormat, ImageSize, ImageData0)).

-doc """
Set the texture wrap mode for the S coordinate.

It implements the `glTexParameteri` function

```
gl:tex_wrap_s(texture_2d, clamp_to_edge).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glTexParameteri) for more information.
""".
-spec tex_wrap_s(
    Target :: texture_target(),
    Mode :: texture_wrap_mode()
) -> ok | {error, atom()}.
tex_wrap_s(Target, Mode) ->
    NewMode = case Mode of
        repeat -> ?GL_REPEAT;
        clamp_to_edge -> ?GL_CLAMP_TO_EDGE;
        mirrored_repeat -> ?GL_MIRRORED_REPEAT
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

    ?CALL_RAW_FUNC(glTexParameteri_raw(NewTarget, ?GL_TEXTURE_WRAP_S, NewMode)).

-doc """
Bind a named buffer object.

It implements the `glBindBuffer` function

```
gl:bind_buffer(array_buffer, Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBindBuffer) for more information.
""".
-spec bind_buffer(
    Target :: buffer_target(),
    Buffer :: buffer() | none
) -> ok | {error, atom()}.
bind_buffer(Target, Buffer) ->
    NewBuffer = case Buffer of
        none -> 0;
        Buffer0 when is_integer(Buffer0), Buffer0 > 0 -> Buffer0
    end,
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER
    end,

    ?CALL_RAW_FUNC(glBindBuffer_raw(NewTarget, NewBuffer)).

-type uniform_matrix_value() ::
    matrix2(gl:float()) |
    [matrix2(gl:float())] |
    matrix3(gl:float()) |
    [matrix3(gl:float())] |
    matrix4(gl:float()) |
    [matrix4(gl:float())]
.

-doc """
Set one or more matrix uniforms for the current program.

It implements the following OpenGL commands:

- `glUniformMatrix4fv`
- `glUniformMatrix4fv`
- `glUniformMatrix3fv`
- `glUniformMatrix3fv`
- `glUniformMatrix2fv`
- `glUniformMatrix2fv`

```
ok = gl:uniform_matrix(f, Location, {{1.0, 0.0}, {0.0, 1.0}}).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glUniformMatrix) for more information.
""".
-spec uniform_matrix(
    Type :: f,
    Location :: gl:int(),
    Value :: uniform_matrix_value()
) -> ok | {error, atom()}.
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix4fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 4
->
    NewValue = ?GL_PACK_MATRIX_4x4(Value),

    ?CALL_RAW_FUNC(glUniformMatrix4fv_raw(Location, 1, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix3fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 3
->
    NewValue = ?GL_PACK_MATRIX_3x3(Value),

    ?CALL_RAW_FUNC(glUniformMatrix3fv_raw(Location, 1, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix2fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 2
->
    NewValue = ?GL_PACK_MATRIX_2x2(Value),

    ?CALL_RAW_FUNC(glUniformMatrix2fv_raw(Location, 1, false, NewValue)).

-doc """
Return whether a program object has been flagged for deletion.

It implements the `glGetProgramiv` function

```
{ok, false} = gl:get_program_delete_status(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramiv) for more information.
""".
-spec get_program_delete_status(Program :: program()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_program_delete_status(Program) ->

    ?CALL_RAW_FUNC(glGetProgramiv_raw(Program, ?GL_DELETE_STATUS)).

-doc """
Returns the source code string from a shader object.

It implements the `glGetShaderSource` function

```
{ok, Source} = gl:get_shader_source(Shader, 4096).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetShaderSource) for more information.
""".
-spec get_shader_source(
    Shader :: shader(),
    MaxLength :: pos_integer()
) -> {ok, Source :: binary()} | {error, atom()}.
get_shader_source(Shader, MaxLength) ->

    ?CALL_RAW_FUNC(glGetShaderSource_raw(Shader, MaxLength)).

-doc """
Return the maximum active uniform name length for a program.

It implements the `glGetProgramiv` function

```
{ok, Length} = gl:get_program_active_uniform_max_length(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramiv) for more information.
""".
-spec get_program_active_uniform_max_length(Program :: program()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_program_active_uniform_max_length(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ACTIVE_UNIFORM_MAX_LENGTH)).

-doc """
Specify multisample coverage parameters.

It implements the `glSampleCoverage` function

```
gl:sample_coverage(0.5, false).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glSampleCoverage) for more information.
""".
-spec sample_coverage(
    Value :: gl:float(),
    Invert :: gl:boolean()
) -> ok | {error, atom()}.
sample_coverage(Value, Invert) ->

    ?CALL_RAW_FUNC(glSampleCoverage_raw(Value, Invert)).

-doc """
Set front and/or back stencil test actions.

It implements the `glStencilOpSeparate` function

```
gl:stencil_op_separate(back, keep, keep, replace).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilOpSeparate) for more information.
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

    ?CALL_RAW_FUNC(glStencilOpSeparate_raw(NewFace, NewStencilFail, NewDepthPassFail, NewDepthPassPass)).

-doc """
Return the number of subpixel precision bits.

It implements the `glGetIntegerv` function

```
{ok, Bits} = gl:get_subpixel_bits().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_subpixel_bits() -> {ok, Bits :: gl:int()} | {error, atom()}.
get_subpixel_bits() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_SUBPIXEL_BITS)).

-doc """
Specify source and destination pixel arithmetic factors.

It implements the `glBlendFunc` function

```
gl:blend_func(src_alpha, one_minus_src_alpha).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBlendFunc) for more information.
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

    ?CALL_RAW_FUNC(glBlendFunc_raw(NewSourceFactor, NewDestinationFactor)).

-doc """
Delete framebuffer objects.

It implements the `glDeleteFramebuffers` function

```
gl:delete_framebuffers([Framebuffer]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteFramebuffers) for more information.
""".
-spec delete_framebuffers(Framebuffers :: [framebuffer()]) -> ok | {error, atom()}.
delete_framebuffers(Framebuffers) ->
    N = length(Framebuffers),
    NewFramebuffers = << <<ID:32/native>> || ID <- Framebuffers >>,
    ?CALL_RAW_FUNC(glDeleteFramebuffers_raw(N, NewFramebuffers)).

-doc """
Specify implementation-specific hints.

It implements the `glHint` function

```
[Target | _] = gl:enums_(hint_target),
gl:hint(Target, nicest).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glHint) for more information.
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

    ?CALL_RAW_FUNC(glHint_raw(NewTarget, NewMode)).

-doc """
Read boolean OpenGL state parameter values.

It implements the `glGetBooleanv` function

```
{ok, Values} = gl:get_boolean(depth_writemask, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetBooleanv) for more information.
""".
-spec get_boolean(
    ParamName :: state_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:boolean()]} | {error, atom()}.
get_boolean(ParamName, Count) ->
    NewParamName = case ParamName of
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

    ?CALL_RAW_FUNC(glGetBooleanv_raw(NewParamName, Count)).

-doc """
Set the constant blend color.

It implements the `glBlendColor` function

```
gl:blend_color(0.25, 0.5, 0.75, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBlendColor) for more information.
""".
-spec blend_color(
    Red :: gl:float(),
    Green :: gl:float(),
    Blue :: gl:float(),
    Alpha :: gl:float()
) -> ok | {error, atom()}.
blend_color(Red, Green, Blue, Alpha) ->

    ?CALL_RAW_FUNC(glBlendColor_raw(Red, Green, Blue, Alpha)).

-doc """
Delete named buffer objects.

It implements the `glDeleteBuffers` function

```
gl:delete_buffers([Buffer]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteBuffers) for more information.
""".
-spec delete_buffers(Buffers :: [buffer()]) -> ok | {error, atom()}.
delete_buffers(Buffers) ->
    N = length(Buffers),
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    ?CALL_RAW_FUNC(glDeleteBuffers_raw(N, NewBuffers)).

-doc """
Read attachment parameter values for the framebuffer bound to a target.

It implements the `glGetFramebufferAttachmentParameteriv` function

```
{ok, Values} = gl:get_framebuffer_attachment_parameter(framebuffer, color_attachment0, framebuffer_attachment_object_name, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetFramebufferAttachmentParameteriv) for more information.
""".
-spec get_framebuffer_attachment_parameter(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    ParamName :: framebuffer_attachment_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_framebuffer_attachment_parameter(Target, Attachment, ParamName, Count) ->
    NewParamName = case ParamName of
        framebuffer_attachment_texture_cube_map_face -> ?GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;
        framebuffer_attachment_object_name -> ?GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
        framebuffer_attachment_object_type -> ?GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
        framebuffer_attachment_texture_level -> ?GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0
    end,
    NewTarget = case Target of
        framebuffer -> ?GL_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glGetFramebufferAttachmentParameteriv_raw(NewTarget, NewAttachment, NewParamName, Count)).

-doc """
Return the maximum active attribute name length for a program.

It implements the `glGetProgramiv` function

```
{ok, Length} = gl:get_program_active_attribute_max_length(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetProgramiv) for more information.
""".
-spec get_program_active_attribute_max_length(Program :: program()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_program_active_attribute_max_length(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ACTIVE_ATTRIBUTE_MAX_LENGTH)).

-doc """
Release resources consumed by the implementation's shader compiler.

It implements the `glReleaseShaderCompiler` function

```
gl:release_shader_compiler().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glReleaseShaderCompiler) for more information.
""".
-spec release_shader_compiler() -> ok | {error, atom()}.
release_shader_compiler() ->

    ?CALL_RAW_FUNC(glReleaseShaderCompiler_raw()).

-doc """
Set pixel storage modes.

It implements the `glPixelStorei` function

```
gl:pixel_store(unpack_alignment, 1).
gl:pixel_store(pack_alignment, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glPixelStorei) for more information.
""".
-spec pixel_store(
    Name :: pixel_store_parameter(),
    Param :: gl:int()
) -> ok | {error, atom()}.
pixel_store(Name, Param) ->
    NewName = case Name of
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        pack_alignment -> ?GL_PACK_ALIGNMENT
    end,

    ?CALL_RAW_FUNC(glPixelStorei_raw(NewName, Param)).

-doc """
Replaces the source code in a shader object.

It implements the `glShaderSource` function

```
ok = gl:shader_source(Shader, [<<"void main() { gl_Position = vec4(0.0); }">>]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glShaderSource) for more information.
""".
-spec shader_source(
    Shader :: shader(),
    Source :: [iodata()]
) -> ok | {error, atom()}.
shader_source(Shader, Source) ->
    SourceNew = lists:map(fun
        (SourceItem) when is_list(SourceItem) -> iolist_to_binary(SourceItem);
        (SourceItem) when is_binary(SourceItem) -> SourceItem
    end, Source),
    ?CALL_RAW_FUNC(glShaderSource_raw(Shader, SourceNew)).

-doc """
Clear buffers to preset values.

It implements the `glClear` function

```
gl:clear([color_buffer_bit]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glClear) for more information.
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
    ?CALL_RAW_FUNC(glClear_raw(NewMask)).

-doc """
Attach a renderbuffer as a logical buffer of a framebuffer object.

It implements the `glFramebufferRenderbuffer` function

```
gl:framebuffer_renderbuffer(framebuffer, color_attachment0, renderbuffer, Renderbuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glFramebufferRenderbuffer) for more information.
""".
-spec framebuffer_renderbuffer(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    RenderbufferTarget :: renderbuffer_target(),
    Renderbuffer :: renderbuffer()
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

    ?CALL_RAW_FUNC(glFramebufferRenderbuffer_raw(NewTarget, NewAttachment, NewRenderbufferTarget, Renderbuffer)).

-doc """
Return the maximum renderbuffer size.

It implements the `glGetIntegerv` function

```
{ok, Size} = gl:get_max_renderbuffer_size().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_max_renderbuffer_size() -> {ok, Size :: gl:int()} | {error, atom()}.
get_max_renderbuffer_size() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_RENDERBUFFER_SIZE)).

-doc """
Read buffer parameter values for the buffer bound to a target.

It implements the following OpenGL commands:

- `glGetBufferParameteriv`

```
{ok, Values} = gl:get_buffer_parameter(i, array_buffer, buffer_size, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetBufferParameter) for more information.
""".
-spec get_buffer_parameter(
    Type :: i,
    Target :: buffer_target(),
    ParamName :: buffer_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_buffer_parameter(i, Target, ParamName, Count) ->
    NewParamName = case ParamName of
        buffer_usage -> ?GL_BUFFER_USAGE;
        buffer_size -> ?GL_BUFFER_SIZE
    end,
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER
    end,

    ?CALL_RAW_FUNC(glGetBufferParameteriv_raw(NewTarget, NewParamName, Count)).

-doc """
Return the current unpack alignment.

It implements the `glGetIntegerv` function

```
{ok, Alignment} = gl:get_unpack_alignment().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_unpack_alignment() -> {ok, Alignment :: gl:int()} | {error, atom()}.
get_unpack_alignment() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_UNPACK_ALIGNMENT)).

-doc """
Copy a two-dimensional texture subimage from the read framebuffer.

It implements the `glCopyTexSubImage2D` function

```
gl:copy_tex_sub_image_2d(texture_2d, 0, 0, 0, 0, 0, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCopyTexSubImage2D) for more information.
""".
-spec copy_tex_sub_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
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

    ?CALL_RAW_FUNC(glCopyTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, X, Y, Width, Height)).

-doc """
Returns the size, type, and name of an active uniform variable for a program object.

It implements the `glGetActiveUniform` function

```
{ok, Size, Type, Name} = gl:get_active_uniform(Program, 0, MaxLength).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetActiveUniform) for more information.
""".
-spec get_active_uniform(
    Program :: program(),
    Index :: gl:uint(),
    MaxLength :: pos_integer()
) -> {ok, Size :: gl:int(), Type :: uniform_type(), Name :: binary()} | {error, atom()}.
get_active_uniform(Program, Index, MaxLength) ->

    ?CALL_RAW_FUNC(glGetActiveUniform_raw(Program, Index, MaxLength)).

-doc """
Establish data storage, format, and dimensions for a renderbuffer object's image.

It implements the `glRenderbufferStorage` function

```
gl:renderbuffer_storage(renderbuffer, rgba4, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glRenderbufferStorage) for more information.
""".
-spec renderbuffer_storage(
    Target :: renderbuffer_target(),
    InternalFormat :: internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
) -> ok | {error, atom()}.
renderbuffer_storage(Target, InternalFormat, Width, Height) ->
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

    ?CALL_RAW_FUNC(glRenderbufferStorage_raw(NewTarget, NewInternalFormat, Width, Height)).

-doc """
Return the number of compressed texture formats supported.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_num_compressed_texture_formats().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_num_compressed_texture_formats() -> {ok, Count :: gl:int()} | {error, atom()}.
get_num_compressed_texture_formats() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_NUM_COMPRESSED_TEXTURE_FORMATS)).

-doc """
Set front and/or back function and reference value for stencil testing.

It implements the `glStencilFuncSeparate` function

```
gl:stencil_func_separate(front, always, 0, 16#FF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glStencilFuncSeparate) for more information.
""".
-spec stencil_func_separate(
    Face :: triangle_face(),
    Function :: stencil_function(),
    Ref :: gl:int(),
    Mask :: gl:uint()
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

    ?CALL_RAW_FUNC(glStencilFuncSeparate_raw(NewFace, NewFunction, Ref, Mask)).

-doc """
Read integer OpenGL state parameter values.

It implements the `glGetIntegerv` function

```
{ok, Values} = gl:get_integer(pack_alignment, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_integer(
    ParamName :: state_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_integer(ParamName, Count) ->
    NewParamName = case ParamName of
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

    ?CALL_RAW_FUNC(glGetIntegervValues_raw(NewParamName, Count)).

-doc """
Specify the value used for depth buffer comparisons.

It implements the `glDepthFunc` function

```
gl:depth_func(less).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDepthFunc) for more information.
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

    ?CALL_RAW_FUNC(glDepthFunc_raw(NewFunction)).

-doc """
Generate framebuffer object names.

It implements the `glGenFramebuffers` function

```
{ok, [Framebuffer]} = gl:gen_framebuffers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGenFramebuffers) for more information.
""".
-spec gen_framebuffers(N :: pos_integer()) -> {ok, Framebuffers :: [framebuffer()]} | {error, atom()}.
gen_framebuffers(N) ->

    ?CALL_RAW_FUNC(glGenFramebuffers_raw(N)).

-doc """
Return the maximum number of fragment texture image units.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_texture_image_units().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_max_texture_image_units() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_texture_image_units() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_TEXTURE_IMAGE_UNITS)).

-doc """
Read floating-point OpenGL state parameter values.

It implements the `glGetFloatv` function

```
{ok, Values} = gl:get_float(line_width, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetFloatv) for more information.
""".
-spec get_float(
    ParamName :: state_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:float()]} | {error, atom()}.
get_float(ParamName, Count) ->
    NewParamName = case ParamName of
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

    ?CALL_RAW_FUNC(glGetFloatv_raw(NewParamName, Count)).

-doc """
Enable and disable writing of frame buffer color components.

It implements the `glColorMask` function

```
gl:color_mask(true, true, true, true).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glColorMask) for more information.
""".
-spec color_mask(
    Red :: gl:boolean(),
    Green :: gl:boolean(),
    Blue :: gl:boolean(),
    Alpha :: gl:boolean()
) -> ok | {error, atom()}.
color_mask(Red, Green, Blue, Alpha) ->

    ?CALL_RAW_FUNC(glColorMask_raw(Red, Green, Blue, Alpha)).

-doc """
Returns shader objects attached to a program, up to the requested capacity.

It implements the `glGetAttachedShaders` function

```
{ok, Shaders} = gl:get_attached_shaders(Program, 2).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetAttachedShaders) for more information.
""".
-spec get_attached_shaders(
    Program :: program(),
    MaxCount :: non_neg_integer()
) -> {ok, Shaders :: [shader()]} | {error, atom()}.
get_attached_shaders(Program, MaxCount) ->

    ?CALL_RAW_FUNC(glGetAttachedShaders_raw(Program, MaxCount)).

-doc """
Determine if a name corresponds to a texture.

It implements the `glIsTexture` function

```
{ok, true} = gl:is_texture(Texture).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsTexture) for more information.
""".
-spec is_texture(Texture :: texture()) -> {ok, IsTexture :: gl:boolean()} | {error, atom()}.
is_texture(Texture) ->

    ?CALL_RAW_FUNC(glIsTexture_raw(Texture)).

-doc """
Determine if a name corresponds to a framebuffer object.

It implements the `glIsFramebuffer` function

```
{ok, true} = gl:is_framebuffer(Framebuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsFramebuffer) for more information.
""".
-spec is_framebuffer(Framebuffer :: framebuffer()) -> {ok, IsFramebuffer :: gl:boolean()} | {error, atom()}.
is_framebuffer(Framebuffer) ->

    ?CALL_RAW_FUNC(glIsFramebuffer_raw(Framebuffer)).

-doc """
Define front- and back-facing polygons.

It implements the `glFrontFace` function

```
gl:front_face(ccw).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glFrontFace) for more information.
""".
-spec front_face(Mode :: front_face_direction()) -> ok | {error, atom()}.
front_face(Mode) ->
    NewMode = case Mode of
        ccw -> ?GL_CCW;
        cw -> ?GL_CW
    end,

    ?CALL_RAW_FUNC(glFrontFace_raw(NewMode)).

-doc """
Specify the equation used for both the RGB blend equation and the alpha blend equation.

It implements the `glBlendEquation` function

```
gl:blend_equation(func_add).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBlendEquation) for more information.
""".
-spec blend_equation(Mode :: blend_equation_mode()) -> ok | {error, atom()}.
blend_equation(Mode) ->
    NewMode = case Mode of
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        func_add -> ?GL_FUNC_ADD
    end,

    ?CALL_RAW_FUNC(glBlendEquation_raw(NewMode)).

-doc """
Return a string describing the current GL connection.

It implements the `glGetString` function

```
{ok, Version} = gl:get_string(version).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetString) for more information.
""".
-spec get_string(Name :: string_name()) -> {ok, String :: binary()} | {error, atom()}.
get_string(Name) ->
    NewName = case Name of
        vendor -> ?GL_VENDOR;
        renderer -> ?GL_RENDERER;
        extensions -> ?GL_EXTENSIONS;
        shading_language_version -> ?GL_SHADING_LANGUAGE_VERSION;
        version -> ?GL_VERSION
    end,

    ?CALL_RAW_FUNC(glGetString_raw(NewName)).

-doc """
Returns the information log for a shader object.

It implements the `glGetShaderInfoLog` function

```
{ok, InfoLog} = gl:get_shader_info_log(Shader, 1024).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetShaderInfoLog) for more information.
""".
-spec get_shader_info_log(
    Shader :: shader(),
    MaxLength :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_shader_info_log(Shader, MaxLength) ->

    ?CALL_RAW_FUNC(glGetShaderInfoLog_raw(Shader, MaxLength)).

-doc """
Enable server-side GL capabilities.

It implements the `glEnable` function

```
gl:enable(scissor_test).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glEnable) for more information.
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

    ?CALL_RAW_FUNC(glEnable_raw(NewCap)).

-type get_tex_parameter_value() ::
    gl:float() |
    gl:int()
.

-doc """
Read texture parameter values for the texture bound to a target.

It implements the following OpenGL commands:

- `glGetTexParameteriv`
- `glGetTexParameterfv`

```
{ok, Values} = gl:get_tex_parameter(i, texture_2d, texture_wrap_s, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetTexParameter) for more information.
""".
-spec get_tex_parameter(
    Type :: f | i,
    Target :: texture_target(),
    ParamName :: texture_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [get_tex_parameter_value()]} | {error, atom()}.
get_tex_parameter(i, Target, ParamName, Count) ->
    NewParamName = case ParamName of
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
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

    ?CALL_RAW_FUNC(glGetTexParameteriv_raw(NewTarget, NewParamName, Count));
get_tex_parameter(f, Target, ParamName, Count) ->
    NewParamName = case ParamName of
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
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

    ?CALL_RAW_FUNC(glGetTexParameterfv_raw(NewTarget, NewParamName, Count)).

-doc """
Determine if a name corresponds to a buffer object.

It implements the `glIsBuffer` function

```
{ok, true} = gl:is_buffer(Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsBuffer) for more information.
""".
-spec is_buffer(Buffer :: buffer()) -> {ok, IsBuffer :: gl:boolean()} | {error, atom()}.
is_buffer(Buffer) ->

    ?CALL_RAW_FUNC(glIsBuffer_raw(Buffer)).

-doc """
Specify pixel arithmetic factors for RGB and alpha components separately.

It implements the `glBlendFuncSeparate` function

```
gl:blend_func_separate(src_alpha, one_minus_src_alpha, one, zero).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBlendFuncSeparate) for more information.
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

    ?CALL_RAW_FUNC(glBlendFuncSeparate_raw(NewSourceRGB, NewDestinationRGB, NewSourceAlpha, NewDestinationAlpha)).

-doc """
Bind a framebuffer to a framebuffer target.

It implements the `glBindFramebuffer` function

```
gl:bind_framebuffer(framebuffer, Framebuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBindFramebuffer) for more information.
""".
-spec bind_framebuffer(
    Target :: framebuffer_target(),
    Framebuffer :: framebuffer()
) -> ok | {error, atom()}.
bind_framebuffer(Target, Framebuffer) ->
    NewTarget = case Target of
        framebuffer -> ?GL_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glBindFramebuffer_raw(NewTarget, Framebuffer)).

-doc """
Bind a renderbuffer to a renderbuffer target.

It implements the `glBindRenderbuffer` function

```
gl:bind_renderbuffer(renderbuffer, Renderbuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBindRenderbuffer) for more information.
""".
-spec bind_renderbuffer(
    Target :: renderbuffer_target(),
    Renderbuffer :: renderbuffer()
) -> ok | {error, atom()}.
bind_renderbuffer(Target, Renderbuffer) ->
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    ?CALL_RAW_FUNC(glBindRenderbuffer_raw(NewTarget, Renderbuffer)).

-doc """
Specify clear values for the color buffers.

It implements the `glClearColor` function

```
gl:clear_color(0.0, 0.0, 0.0, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glClearColor) for more information.
""".
-spec clear_color(
    Red :: gl:float(),
    Green :: gl:float(),
    Blue :: gl:float(),
    Alpha :: gl:float()
) -> ok | {error, atom()}.
clear_color(Red, Green, Blue, Alpha) ->

    ?CALL_RAW_FUNC(glClearColor_raw(Red, Green, Blue, Alpha)).

-doc """
Return the maximum number of vertex attributes.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_attribs().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_max_vertex_attribs() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_attribs() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_VERTEX_ATTRIBS)).

-doc """
Test whether a capability is enabled.

It implements the `glIsEnabled` function

```
{ok, true} = gl:is_enabled(scissor_test).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glIsEnabled) for more information.
""".
-spec is_enabled(Capability :: enable_cap()) -> {ok, IsEnabled :: gl:boolean()} | {error, atom()}.
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

    ?CALL_RAW_FUNC(glIsEnabled_raw(NewCapability)).

-type vertex_attrib_value() ::
    gl:float() |
    vector2(gl:float()) |
    vector3(gl:float()) |
    vector4(gl:float())
.

-doc """
Specify the current value of a generic vertex attribute.

It implements the following OpenGL commands:

- `glVertexAttrib4f`
- `glVertexAttrib3f`
- `glVertexAttrib2f`
- `glVertexAttrib1f`

```
ok = gl:vertex_attrib(f, 0, 1.0).
ok = gl:vertex_attrib(f, 0, {1.0, 0.0, 0.0, 1.0}).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glVertexAttrib) for more information.
""".
-spec vertex_attrib(
    Type :: f,
    Index :: gl:uint(),
    Values :: vertex_attrib_value()
) -> ok | {error, atom()}.
vertex_attrib(f, Index, Values) when
    is_tuple(Values) andalso
    tuple_size(Values) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Values),

    ?CALL_RAW_FUNC(glVertexAttrib4f_raw(Index, V1, V2, V3, V4));
vertex_attrib(f, Index, Values) when
    is_tuple(Values) andalso
    tuple_size(Values) =:= 3
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Values),

    ?CALL_RAW_FUNC(glVertexAttrib3f_raw(Index, V1, V2, V3));
vertex_attrib(f, Index, Values) when
    is_tuple(Values) andalso
    tuple_size(Values) =:= 2
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Values),

    ?CALL_RAW_FUNC(glVertexAttrib2f_raw(Index, V1, V2));
vertex_attrib(f, Index, Values) ->

    ?CALL_RAW_FUNC(glVertexAttrib1f_raw(Index, Values)).

-doc """
Generate buffer object names.

It implements the `glGenBuffers` function

```
{ok, [Buffer]} = gl:gen_buffers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGenBuffers) for more information.
""".
-spec gen_buffers(N :: pos_integer()) -> {ok, Buffers :: [buffer()]} | {error, atom()}.
gen_buffers(N) ->

    ?CALL_RAW_FUNC(glGenBuffers_raw(N)).

-type get_uniform_value() ::
    gl:float() |
    gl:int()
.

-doc """
Read current uniform storage values from a linked program object.

It implements the following OpenGL commands:

- `glGetUniformiv`
- `glGetUniformfv`

```
{ok, Values} = gl:get_uniform(f, Program, Location, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetUniform) for more information.
""".
-spec get_uniform(
    Type :: f | i,
    Program :: program(),
    Location :: gl:int(),
    Count :: pos_integer()
) -> {ok, Values :: [get_uniform_value()]} | {error, atom()}.
get_uniform(i, Program, Location, Count) ->

    ?CALL_RAW_FUNC(glGetUniformiv_raw(Program, Location, Count));
get_uniform(f, Program, Location, Count) ->

    ?CALL_RAW_FUNC(glGetUniformfv_raw(Program, Location, Count)).

-doc """
Update a subset of a buffer object's data store.

It implements the `glBufferSubData` function

```
ok = gl:buffer_sub_data(array_buffer, 1, <<9, 8>>).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glBufferSubData) for more information.
""".
-spec buffer_sub_data(
    Target :: buffer_target(),
    Offset :: gl:intptr(),
    Data :: iodata()
) -> ok | {error, atom()}.
buffer_sub_data(Target, Offset, Data) ->
    Data0 = iolist_to_binary(Data),
    Size = byte_size(Data0),
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER
    end,

    ?CALL_RAW_FUNC(glBufferSubData_raw(NewTarget, Offset, Size, Data0)).

-doc """
Select active texture unit.

It implements the `glActiveTexture` function

```
gl:active_texture(texture0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glActiveTexture) for more information.
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

    ?CALL_RAW_FUNC(glActiveTexture_raw(NewTexture)).

-doc """
Return the maximum texture size.

It implements the `glGetIntegerv` function

```
{ok, Size} = gl:get_max_texture_size().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_max_texture_size() -> {ok, Size :: gl:int()} | {error, atom()}.
get_max_texture_size() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_TEXTURE_SIZE)).

-doc """
Return whether a shader object has been flagged for deletion.

It implements the `glGetShaderiv` function

```
{ok, false} = gl:get_shader_delete_status(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetShaderiv) for more information.
""".
-spec get_shader_delete_status(Shader :: shader()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_shader_delete_status(Shader) ->

    ?CALL_RAW_FUNC(glGetShaderiv_raw(Shader, ?GL_DELETE_STATUS)).

-doc """
Block until all GL execution is complete.

It implements the `glFinish` function

```
gl:finish().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glFinish) for more information.
""".
-spec finish() -> ok | {error, atom()}.
finish() ->

    ?CALL_RAW_FUNC(glFinish_raw()).

-doc """
Read renderbuffer parameter values for the renderbuffer bound to a target.

It implements the `glGetRenderbufferParameteriv` function

```
{ok, Values} = gl:get_renderbuffer_parameter(renderbuffer, renderbuffer_width, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetRenderbufferParameteriv) for more information.
""".
-spec get_renderbuffer_parameter(
    Target :: renderbuffer_target(),
    ParamName :: renderbuffer_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_renderbuffer_parameter(Target, ParamName, Count) ->
    NewParamName = case ParamName of
        renderbuffer_depth_size -> ?GL_RENDERBUFFER_DEPTH_SIZE;
        renderbuffer_internal_format -> ?GL_RENDERBUFFER_INTERNAL_FORMAT;
        renderbuffer_height -> ?GL_RENDERBUFFER_HEIGHT;
        renderbuffer_stencil_size -> ?GL_RENDERBUFFER_STENCIL_SIZE;
        renderbuffer_width -> ?GL_RENDERBUFFER_WIDTH;
        renderbuffer_red_size -> ?GL_RENDERBUFFER_RED_SIZE;
        renderbuffer_green_size -> ?GL_RENDERBUFFER_GREEN_SIZE;
        renderbuffer_alpha_size -> ?GL_RENDERBUFFER_ALPHA_SIZE;
        renderbuffer_blue_size -> ?GL_RENDERBUFFER_BLUE_SIZE
    end,
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    ?CALL_RAW_FUNC(glGetRenderbufferParameteriv_raw(NewTarget, NewParamName, Count)).

-doc """
Return whether a shader object's last compile succeeded.

It implements the `glGetShaderiv` function

```
{ok, true} = gl:get_shader_compile_status(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetShaderiv) for more information.
""".
-spec get_shader_compile_status(Shader :: shader()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_shader_compile_status(Shader) ->

    ?CALL_RAW_FUNC(glGetShaderiv_raw(Shader, ?GL_COMPILE_STATUS)).

-doc """
Creates a program object.

It implements the `glCreateProgram` function

```
{ok, Program} = gl:create_program().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCreateProgram) for more information.
""".
-spec create_program() -> {ok, Program :: program()} | {error, atom()}.
create_program() ->

    ?CALL_RAW_FUNC(glCreateProgram_raw()).

-doc """
Specify a two-dimensional texture image in a compressed format.

It implements the `glCompressedTexImage2D` function

```
ok = gl:compressed_tex_image_2d(texture_2d, 0, compressed_rgba, 4, 4, 0, CompressedBytes).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCompressedTexImage2D) for more information.
""".
-spec compressed_tex_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Border :: gl:int(),
    ImageData :: iodata()
) -> ok | {error, atom()}.
compressed_tex_image_2d(Target, Level, InternalFormat, Width, Height, Border, ImageData) ->
    ImageData0 = iolist_to_binary(ImageData),
    ImageSize = byte_size(ImageData0),
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

    ?CALL_RAW_FUNC(glCompressedTexImage2D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Border, ImageSize, ImageData0)).

-doc """
Specify whether front- or back-facing facets can be culled.

It implements the `glCullFace` function

```
gl:cull_face(front_and_back).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glCullFace) for more information.
""".
-spec cull_face(Mode :: triangle_face()) -> ok | {error, atom()}.
cull_face(Mode) ->
    NewMode = case Mode of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    ?CALL_RAW_FUNC(glCullFace_raw(NewMode)).

-doc """
Return the maximum number of vertex uniform vectors.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_uniform_vectors().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_max_vertex_uniform_vectors() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_uniform_vectors() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_UNIFORM_VECTORS)).

-doc """
Installs a program object as part of current rendering state.

It implements the `glUseProgram` function

```
ok = gl:use_program(Program).
ok = gl:use_program(none).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glUseProgram) for more information.
""".
-spec use_program(Program :: program() | none) -> ok | {error, atom()}.
use_program(Program) ->
    NewProgram = case Program of
        none -> 0;
        Program0 when is_integer(Program0), Program0 > 0 -> Program0
    end,

    ?CALL_RAW_FUNC(glUseProgram_raw(NewProgram)).

-doc """
Read a block of pixels from the frame buffer.

It implements the `glReadPixels` function

```
{ok, Pixels} = gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glReadPixels) for more information.
""".
-spec read_pixels(
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    PixelsSize :: non_neg_integer()
) -> {ok, Pixels :: binary()} | {error, atom()}.
read_pixels(X, Y, Width, Height, Format, Type, PixelsSize) ->
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

    ?CALL_RAW_FUNC(glReadPixels_raw(X, Y, Width, Height, NewFormat, NewType, PixelsSize)).

-doc """
Deletes a program object.

It implements the `glDeleteProgram` function

```
ok = gl:delete_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glDeleteProgram) for more information.
""".
-spec delete_program(Program :: program()) -> ok | {error, atom()}.
delete_program(Program) ->

    ?CALL_RAW_FUNC(glDeleteProgram_raw(Program)).

-doc """
Return the current pack alignment.

It implements the `glGetIntegerv` function

```
{ok, Alignment} = gl:get_pack_alignment().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetIntegerv) for more information.
""".
-spec get_pack_alignment() -> {ok, Alignment :: gl:int()} | {error, atom()}.
get_pack_alignment() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_PACK_ALIGNMENT)).

-doc """
Return the location of a named uniform variable.

It implements the `glGetUniformLocation` function

```
{ok, Location} = gl:get_uniform_location(Program, [<<"u_">>, "color"]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es2/glGetUniformLocation) for more information.
""".
-spec get_uniform_location(
    Program :: program(),
    Name :: iodata()
) -> {ok, Location :: gl:int()} | {error, atom()}.
get_uniform_location(Program, Name) ->
    Name0 = iolist_to_binary(Name),

    ?CALL_RAW_FUNC(glGetUniformLocation_raw(Program, Name0)).


glDisable_raw(_Cap) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramiv_raw(_Program, _PName) ->
    erlang:nif_error(nif_library_not_loaded).

glTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _Type, _Pixels) ->
    erlang:nif_error(nif_library_not_loaded).

glEnableVertexAttribArray_raw(_Index) ->
    erlang:nif_error(nif_library_not_loaded).

glClearStencil_raw(_Value) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramivInteger_raw(_Program, _PName) ->
    erlang:nif_error(nif_library_not_loaded).

glBindAttribLocation_raw(_Program, _Index, _Name) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramInfoLog_raw(_Program, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glGetShaderPrecisionFormat_raw(_ShaderType, _PrecisionType) ->
    erlang:nif_error(nif_library_not_loaded).

glGetIntegervInteger_raw(_PName) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteRenderbuffers_raw(_N, _Renderbuffers) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilOp_raw(_Fail, _ZFail, _ZPass) ->
    erlang:nif_error(nif_library_not_loaded).

glIsRenderbuffer_raw(_Renderbuffer) ->
    erlang:nif_error(nif_library_not_loaded).

glFlush_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glCreateShader_raw(_Type) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribPointer_raw(_Index, _Size, _Type, _Normalized, _Stride, _Offset) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawElements_raw(_Mode, _Count, _Type, _Offset) ->
    erlang:nif_error(nif_library_not_loaded).

glPolygonOffset_raw(_Factor, _Units) ->
    erlang:nif_error(nif_library_not_loaded).

glGetShaderivInteger_raw(_Shader, _PName) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilMask_raw(_Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glDisableVertexAttribArray_raw(_Index) ->
    erlang:nif_error(nif_library_not_loaded).

glClearDepthf_raw(_Depth) ->
    erlang:nif_error(nif_library_not_loaded).

glLinkProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glCompileShader_raw(_Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glDetachShader_raw(_Program, _Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glBufferData_raw(_Target, _Size, _Data, _Usage) ->
    erlang:nif_error(nif_library_not_loaded).

glAttachShader_raw(_Program, _Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glGenerateMipmap_raw(_Target) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameterf_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameterfv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameteriv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetIntegervBoolean_raw(_PName) ->
    erlang:nif_error(nif_library_not_loaded).

glGetIntegerv_raw(_PName) ->
    erlang:nif_error(nif_library_not_loaded).

glCheckFramebufferStatus_raw(_Target) ->
    erlang:nif_error(nif_library_not_loaded).

glIsProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glIsShader_raw(_Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glGenTextures_raw(_Textures) ->
    erlang:nif_error(nif_library_not_loaded).

glGenRenderbuffers_raw(_Renderbuffers) ->
    erlang:nif_error(nif_library_not_loaded).

glShaderBinary_raw(_Shaders, _BinaryFormat, _Binary, _Length) ->
    erlang:nif_error(nif_library_not_loaded).

glGetActiveAttrib_raw(_Program, _Index, _MaxLength) ->
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

glGetAttribLocation_raw(_Program, _Name) ->
    erlang:nif_error(nif_library_not_loaded).

glGetVertexAttribfv_raw(_Index, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetVertexAttribiv_raw(_Index, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetError_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glBindTexture_raw(_Target, _Texture) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteShader_raw(_Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glDepthRangef_raw(_Near, _Far) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1f_raw(_Location, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1i_raw(_Location, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2f_raw(_Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2i_raw(_Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3f_raw(_Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3i_raw(_Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4f_raw(_Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4i_raw(_Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilFunc_raw(_Function, _Ref, _Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameteri_raw(_Target, _ParameterName, _Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawArrays_raw(_Mode, _First, _Count) ->
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTexture2D_raw(_Target, _Attachment, _TextureTarget, _Texture, _Level) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteTextures_raw(_N, _Textures) ->
    erlang:nif_error(nif_library_not_loaded).

glLineWidth_raw(_Width) ->
    erlang:nif_error(nif_library_not_loaded).

glDepthMask_raw(_Flag) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendEquationSeparate_raw(_ModeRGB, _ModeAlpha) ->
    erlang:nif_error(nif_library_not_loaded).

glViewport_raw(_X, _Y, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _ImageSize, _ImageData) ->
    erlang:nif_error(nif_library_not_loaded).

glBindBuffer_raw(_Target, _Buffer) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix2fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix3fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix4fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glGetShaderSource_raw(_Shader, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glSampleCoverage_raw(_Value, _Invert) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilOpSeparate_raw(_Face, _StencilFail, _DepthPassFail, _DepthPassPass) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendFunc_raw(_SourceFactor, _DestinationFactor) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteFramebuffers_raw(_N, _Framebuffers) ->
    erlang:nif_error(nif_library_not_loaded).

glHint_raw(_Target, _Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glGetBooleanv_raw(_ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendColor_raw(_Red, _Green, _Blue, _Alpha) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteBuffers_raw(_N, _Buffers) ->
    erlang:nif_error(nif_library_not_loaded).

glGetFramebufferAttachmentParameteriv_raw(_Target, _Attachment, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glReleaseShaderCompiler_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glPixelStorei_raw(_Name, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glShaderSource_raw(_Shader, _Source) ->
    erlang:nif_error(nif_library_not_loaded).

glClear_raw(_Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glFramebufferRenderbuffer_raw(_Target, _Attachment, _RenderbufferTarget, _Renderbuffer) ->
    erlang:nif_error(nif_library_not_loaded).

glGetBufferParameteriv_raw(_Target, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _X, _Y, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glGetActiveUniform_raw(_Program, _Index, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glRenderbufferStorage_raw(_Target, _InternalFormat, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilFuncSeparate_raw(_Face, _Function, _Ref, _Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glGetIntegervValues_raw(_ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glDepthFunc_raw(_Function) ->
    erlang:nif_error(nif_library_not_loaded).

glGenFramebuffers_raw(_Framebuffers) ->
    erlang:nif_error(nif_library_not_loaded).

glGetFloatv_raw(_ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glColorMask_raw(_Red, _Green, _Blue, _Alpha) ->
    erlang:nif_error(nif_library_not_loaded).

glGetAttachedShaders_raw(_Program, _MaxCount) ->
    erlang:nif_error(nif_library_not_loaded).

glIsTexture_raw(_Texture) ->
    erlang:nif_error(nif_library_not_loaded).

glIsFramebuffer_raw(_Framebuffer) ->
    erlang:nif_error(nif_library_not_loaded).

glFrontFace_raw(_Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendEquation_raw(_Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glGetString_raw(_Name) ->
    erlang:nif_error(nif_library_not_loaded).

glGetShaderInfoLog_raw(_Shader, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glEnable_raw(_Cap) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTexParameterfv_raw(_Target, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTexParameteriv_raw(_Target, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glIsBuffer_raw(_Buffer) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendFuncSeparate_raw(_SourceRGB, _DestinationRGB, _SourceAlpha, _DestinationAlpha) ->
    erlang:nif_error(nif_library_not_loaded).

glBindFramebuffer_raw(_Target, _Framebuffer) ->
    erlang:nif_error(nif_library_not_loaded).

glBindRenderbuffer_raw(_Target, _Renderbuffer) ->
    erlang:nif_error(nif_library_not_loaded).

glClearColor_raw(_Red, _Green, _Blue, _Alpha) ->
    erlang:nif_error(nif_library_not_loaded).

glIsEnabled_raw(_Capability) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib1f_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib2f_raw(_Index, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib3f_raw(_Index, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4f_raw(_Index, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glGenBuffers_raw(_Buffers) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformfv_raw(_Program, _Location, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformiv_raw(_Program, _Location, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glBufferSubData_raw(_Target, _Offset, _Size, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glActiveTexture_raw(_Texture) ->
    erlang:nif_error(nif_library_not_loaded).

glGetShaderiv_raw(_Shader, _PName) ->
    erlang:nif_error(nif_library_not_loaded).

glFinish_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glGetRenderbufferParameteriv_raw(_Target, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glCreateProgram_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexImage2D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Border, _ImageSize, _ImageData) ->
    erlang:nif_error(nif_library_not_loaded).

glCullFace_raw(_Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glUseProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glReadPixels_raw(_X, _Y, _Width, _Height, _Format, _Type, _Pixels) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformLocation_raw(_Program, _Name) ->
    erlang:nif_error(nif_library_not_loaded).


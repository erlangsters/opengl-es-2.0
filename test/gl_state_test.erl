-module(gl_state_test).
-include_lib("eunit/include/eunit.hrl").

baseline_runtime_surface_test() ->
    gl_test_context:setup_context(),

    {ok, no_error} = gl:get_error(),
    {ok, Version} = gl:get_string(version),
    assert_nonempty_binary(Version),
    ok = state_limit_queries_check(),
    ok = state_detail_queries_check(),
    ok = state_limit_expansion_queries_check(),
    ok = frontier_scalar_queries_check(),
    ok = gl:cull_face(front),
    ok = gl:cull_face(back),
    ok = gl:cull_face(front_and_back),
    ok = gl:front_face(cw),
    ok = gl:front_face(ccw),
    ok = gl:line_width(1.0),
    ok = gl:scissor(0, 0, 1, 1),
    ok = gl:viewport(0, 0, 1, 1),
    ok = gl:hint(generate_mipmap_hint, nicest),
    ok = gl:pixel_store(unpack_alignment, 1),
    ok = gl:pixel_store(pack_alignment, 1),
    ok = gl:color_mask(true, false, true, false),
    ok = gl:color_mask(true, true, true, true),
    ok = gl:clear_color(0.0, 0.0, 0.0, 1.0),
    ok = gl:clear([color_buffer_bit]),
    ok = read_pixels_check(),
    ok = gl:clear_stencil(0),
    ok = gl:depth_mask(true),
    ok = gl:depth_mask(false),
    ok = gl:stencil_mask(16#FF),
    ok = gl:stencil_func(always, 0, 16#FF),
    ok = gl:stencil_op(keep, keep, replace),
    ok = gl:stencil_func_separate(front, always, 0, 16#FF),
    ok = gl:stencil_op_separate(back, keep, keep, replace),
    ok = gl:stencil_mask_separate(front_and_back, 16#FF),
    ok = gl:blend_func(src_alpha, one_minus_src_alpha),
    ok = gl:blend_func_separate(src_alpha, one_minus_src_alpha, one, zero),
    ok = gl:blend_equation(func_add),
    ok = gl:blend_equation_separate(func_add, func_add),
    ok = gl:blend_color(0.25, 0.5, 0.75, 1.0),
    ok = gl:sample_coverage(0.5, false),
    ok = gl:flush(),
    ok = gl:finish(),
    ok = gl:clear_depth(1.0),
    ok = gl:depth_range(0.0, 1.0),
    ok = gl:depth_func(less),
    ok = gl:polygon_offset(1.0, 1.0),
    ok = gl:enable(scissor_test),
    {ok, true} = gl:is_enabled(scissor_test),
    ok = gl:disable(scissor_test),
    {ok, false} = gl:is_enabled(scissor_test),
    ok = gl:active_texture(texture0),
    {ok, [Texture]} = gl:gen_textures(1),
    ok = gl:bind_texture(texture_2d, Texture),
    ok = gl:tex_min_filter(texture_2d, nearest),
    ok = gl:tex_mag_filter(texture_2d, nearest),
    ok = gl:tex_wrap_s(texture_2d, clamp_to_edge),
    ok = gl:tex_wrap_t(texture_2d, clamp_to_edge),
    ok = gl:tex_parameter(f, texture_2d, texture_wrap_s, 33071.0),
    ok = gl:tex_parameter(f, texture_2d, texture_wrap_t, [33071.0]),
    ok = gl:tex_parameter(i, texture_2d, texture_wrap_s, [16#812F]),
    {ok, true} = gl:is_texture(Texture),
    ok = gl:bind_texture(texture_2d, none),
    ok = gl:delete_textures([Texture]),
    {ok, false} = gl:is_texture(Texture),
    {ok, [Buffer]} = gl:gen_buffers(1),
    ok = gl:bind_buffer(array_buffer, Buffer),
    {ok, true} = gl:is_buffer(Buffer),
    ok = gl:buffer_data(array_buffer, <<0, 1, 2, 3>>, static_draw),
    ok = gl:buffer_sub_data(array_buffer, 1, <<9, 8>>),
    {ok, [Renderbuffer]} = gl:gen_renderbuffers(1),
    ok = gl:bind_renderbuffer(renderbuffer, Renderbuffer),
    {ok, true} = gl:is_renderbuffer(Renderbuffer),
    ok = gl:renderbuffer_storage(renderbuffer, rgba4, 1, 1),
    {ok, [Framebuffer]} = gl:gen_framebuffers(1),
    ok = gl:bind_framebuffer(framebuffer, Framebuffer),
    {ok, true} = gl:is_framebuffer(Framebuffer),
    ok = framebuffer_texture_attachment_check(),
    ok = gl:framebuffer_renderbuffer(framebuffer, color_attachment0, renderbuffer, Renderbuffer),
    {ok, framebuffer_complete} = gl:check_framebuffer_status(framebuffer),
    ok = gl:delete_framebuffers([Framebuffer]),
    {ok, false} = gl:is_framebuffer(Framebuffer),
    ok = gl:delete_renderbuffers([Renderbuffer]),
    {ok, false} = gl:is_renderbuffer(Renderbuffer),
    ok = copy_tex_image_check(),
    {ok, VertexShader} = gl:create_shader(vertex_shader),
    {ok, true} = gl:is_shader(VertexShader),
    ok = gl:shader_source(VertexShader, [[
        "attribute vec4 position; ",
        "uniform vec4 u_color; ",
        "varying vec4 v_color; ",
        "void main() { v_color = u_color; gl_Position = position; }"
    ]]),
    {ok, VertexShaderSource} = gl:get_shader_source(VertexShader, 4096),
    assert_nonempty_binary(VertexShaderSource),
    ok = gl:compile_shader(VertexShader),
    {ok, true} = gl:get_shader_compile_status(VertexShader),
    {ok, VertexShaderInfoLog} = gl:get_shader_info_log(VertexShader, 1024),
    assert_binary(VertexShaderInfoLog),
    ok = assert_shader_metadata(VertexShader),
    {ok, FragmentShader} = gl:create_shader(fragment_shader),
    {ok, true} = gl:is_shader(FragmentShader),
    ok = gl:shader_source(FragmentShader, [[
        "varying vec4 v_color; ",
        "void main() { gl_FragColor = v_color; }"
    ]]),
    {ok, FragmentShaderSource} = gl:get_shader_source(FragmentShader, 4096),
    assert_nonempty_binary(FragmentShaderSource),
    ok = gl:compile_shader(FragmentShader),
    {ok, true} = gl:get_shader_compile_status(FragmentShader),
    {ok, FragmentShaderInfoLog} = gl:get_shader_info_log(FragmentShader, 1024),
    assert_binary(FragmentShaderInfoLog),
    ok = assert_shader_metadata(FragmentShader),
    ok = gl:release_shader_compiler(),
    {ok, Program} = gl:create_program(),
    {ok, true} = gl:is_program(Program),
    ok = gl:attach_shader(Program, VertexShader),
    ok = gl:attach_shader(Program, FragmentShader),
    {ok, AttachedShaders} = gl:get_attached_shaders(Program, 2),
    ?assertEqual(lists:sort([VertexShader, FragmentShader]), lists:sort(AttachedShaders)),
    ok = gl:bind_attrib_location(Program, 0, ["pos", <<"ition">>]),
    ok = gl:link_program(Program),
    {ok, ProgramInfoLog} = gl:get_program_info_log(Program, 1024),
    assert_binary(ProgramInfoLog),
    ok = assert_program_metadata(Program, 2),
    ok = assert_active_reflection_metadata(Program),
    {ok, 0} = gl:get_attrib_location(Program, ["pos", <<"ition">>]),
    {ok, ColorLocation} = gl:get_uniform_location(Program, ["u_", <<"color">>]),
    assert_non_negative_integer(ColorLocation),
    {ok, -1} = gl:get_uniform_location(Program, ["u_", <<"missing">>]),
    {ok, true} = gl:get_program_link_status(Program),
    ok = gl:validate_program(Program),
    {ok, true} = gl:get_program_validation_status(Program),
    ok = gl:vertex_attrib_pointer(0, 2, float, false, 0, 0),
    ok = gl:vertex_attrib(f, 0, 1.0),
    ok = gl:vertex_attrib(f, 0, {1.0, 0.0}),
    ok = gl:vertex_attrib(f, 0, {1.0, 0.0, 0.0}),
    ok = gl:vertex_attrib(f, 0, {1.0, 0.0, 0.0, 1.0}),
    ok = gl:enable_vertex_attrib_array(0),
    ok = gl:disable_vertex_attrib_array(0),
    ok = gl:use_program(Program),
    ok = gl:uniform(f, -1, 1.0),
    ok = gl:uniform(i, -1, 1),
    ok = gl:uniform(f, -1, {1.0, 0.0}),
    ok = gl:uniform(f, -1, {1.0, 0.0, 0.0}),
    ok = gl:uniform(f, -1, {1.0, 0.0, 0.0, 1.0}),
    ok = gl:uniform(i, -1, {1, 0}),
    ok = gl:uniform(i, -1, {1, 0, 0}),
    ok = gl:uniform(i, -1, {1, 0, 0, 1}),
    ok = gl:uniform(f, -1, [1.0]),
    ok = gl:uniform(f, -1, [{1.0, 0.0, 0.0, 1.0}]),
    ok = gl:uniform(i, -1, [1]),
    ok = gl:uniform(i, -1, [{1, 0, 0, 1}]),
    ok = gl:uniform_matrix(f, -1, {{1.0, 0.0}, {0.0, 1.0}}),
    ok = gl:uniform_matrix(f, -1, [{{1.0, 0.0}, {0.0, 1.0}}]),
    ok = gl:uniform_matrix(f, -1,
        {{1.0, 0.0, 0.0},
         {0.0, 1.0, 0.0},
         {0.0, 0.0, 1.0}}),
    ok = gl:uniform_matrix(f, -1,
        {{1.0, 0.0, 0.0, 0.0},
         {0.0, 1.0, 0.0, 0.0},
         {0.0, 0.0, 1.0, 0.0},
         {0.0, 0.0, 0.0, 1.0}}),
    ok = gl:draw_arrays(triangles, 0, 0),
    ok = gl:use_program(none),
    ok = gl:bind_buffer(array_buffer, none),
    ok = gl:delete_buffers([Buffer]),
    {ok, false} = gl:is_buffer(Buffer),
    ok = gl:detach_shader(Program, FragmentShader),
    ok = gl:detach_shader(Program, VertexShader),
    ok = gl:delete_shader(FragmentShader),
    ok = gl:delete_shader(VertexShader),
    {ok, false} = gl:is_shader(FragmentShader),
    {ok, false} = gl:is_shader(VertexShader),
    ok = gl:delete_program(Program),
    {ok, false} = gl:is_program(Program),
    {ok, no_error} = gl:get_error().

framebuffer_texture_attachment_check() ->
    {ok, [Texture]} = gl:gen_textures(1),
    ok = gl:bind_texture(texture_2d, Texture),
    ok = gl:framebuffer_texture_2d(framebuffer, color_attachment0, texture_2d, Texture, 0),
    ok = gl:bind_texture(texture_2d, none),
    ok = gl:delete_textures([Texture]).

copy_tex_image_check() ->
    {ok, [Framebuffer]} = gl:gen_framebuffers(1),
    {ok, [Renderbuffer]} = gl:gen_renderbuffers(1),
    ok = gl:bind_renderbuffer(renderbuffer, Renderbuffer),
    ok = gl:renderbuffer_storage(renderbuffer, rgba4, 1, 1),
    ok = gl:bind_framebuffer(framebuffer, Framebuffer),
    ok = gl:framebuffer_renderbuffer(framebuffer, color_attachment0, renderbuffer, Renderbuffer),
    {ok, framebuffer_complete} = gl:check_framebuffer_status(framebuffer),
    {ok, [Texture]} = gl:gen_textures(1),
    ok = gl:bind_texture(texture_2d, Texture),
    ok = gl:copy_tex_image_2d(texture_2d, 0, rgba, 0, 0, 1, 1, 0),
    ok = gl:copy_tex_sub_image_2d(texture_2d, 0, 0, 0, 0, 0, 1, 1),
    ok = gl:bind_texture(texture_2d, none),
    ok = gl:delete_textures([Texture]),
    ok = gl:delete_framebuffers([Framebuffer]),
    ok = gl:delete_renderbuffers([Renderbuffer]).

assert_nonempty_binary(Value) ->
    ?assert(is_binary(Value)),
    ?assert(byte_size(Value) > 0).

assert_binary(Value) ->
    ?assert(is_binary(Value)).

state_limit_queries_check() ->
    {ok, MaxTextureSize} = gl:get_max_texture_size(),
    assert_non_negative_integer(MaxTextureSize),
    {ok, SubpixelBits} = gl:get_subpixel_bits(),
    assert_non_negative_integer(SubpixelBits),
    {ok, SampleBuffersCount} = gl:get_sample_buffers_count(),
    assert_non_negative_integer(SampleBuffersCount),
    {ok, SamplesCount} = gl:get_samples_count(),
    assert_non_negative_integer(SamplesCount),
    {ok, NumCompressedTextureFormats} = gl:get_num_compressed_texture_formats(),
    assert_non_negative_integer(NumCompressedTextureFormats),
    {ok, MaxVertexAttribs} = gl:get_max_vertex_attribs(),
    assert_non_negative_integer(MaxVertexAttribs),
    {ok, MaxTextureImageUnits} = gl:get_max_texture_image_units(),
    assert_non_negative_integer(MaxTextureImageUnits),
    {ok, MaxVertexTextureImageUnits} = gl:get_max_vertex_texture_image_units(),
    assert_non_negative_integer(MaxVertexTextureImageUnits),
    {ok, MaxCombinedTextureImageUnits} = gl:get_max_combined_texture_image_units(),
    assert_non_negative_integer(MaxCombinedTextureImageUnits),
    {ok, MaxCubeMapTextureSize} = gl:get_max_cube_map_texture_size(),
    assert_non_negative_integer(MaxCubeMapTextureSize),
    {ok, MaxRenderbufferSize} = gl:get_max_renderbuffer_size(),
    assert_non_negative_integer(MaxRenderbufferSize),
    ok.

state_detail_queries_check() ->
    {ok, PackAlignment} = gl:get_pack_alignment(),
    assert_non_negative_integer(PackAlignment),
    {ok, UnpackAlignment} = gl:get_unpack_alignment(),
    assert_non_negative_integer(UnpackAlignment),
    {ok, NumShaderBinaryFormats} = gl:get_num_shader_binary_formats(),
    assert_non_negative_integer(NumShaderBinaryFormats),
    {ok, MaxVaryingVectors} = gl:get_max_varying_vectors(),
    assert_non_negative_integer(MaxVaryingVectors),
    ok.

state_limit_expansion_queries_check() ->
    {ok, MaxVertexUniformVectors} = gl:get_max_vertex_uniform_vectors(),
    assert_non_negative_integer(MaxVertexUniformVectors),
    {ok, MaxFragmentUniformVectors} = gl:get_max_fragment_uniform_vectors(),
    assert_non_negative_integer(MaxFragmentUniformVectors),
    ok.

frontier_scalar_queries_check() ->
    assert_boolean_query(fun gl:get_shader_compiler_supported/0),
    ok.

assert_shader_metadata(Shader) ->
    {ok, false} = gl:get_shader_delete_status(Shader),
    {ok, SourceLength} = gl:get_shader_source_length(Shader),
    assert_positive_integer(SourceLength),
    {ok, InfoLogLength} = gl:get_shader_info_log_length(Shader),
    assert_non_negative_integer(InfoLogLength).

assert_program_metadata(Program, AttachedShadersCount) ->
    {ok, false} = gl:get_program_delete_status(Program),
    {ok, InfoLogLength} = gl:get_program_info_log_length(Program),
    assert_non_negative_integer(InfoLogLength),
    {ok, AttachedShadersCount} = gl:get_program_attached_shaders_count(Program),
    {ok, ActiveAttributesCount} = gl:get_program_active_attributes_count(Program),
    assert_non_negative_integer(ActiveAttributesCount),
    {ok, ActiveAttributeMaxLength} = gl:get_program_active_attribute_max_length(Program),
    assert_non_negative_integer(ActiveAttributeMaxLength),
    {ok, ActiveUniformsCount} = gl:get_program_active_uniforms_count(Program),
    assert_non_negative_integer(ActiveUniformsCount),
    {ok, ActiveUniformMaxLength} = gl:get_program_active_uniform_max_length(Program),
    assert_non_negative_integer(ActiveUniformMaxLength).

assert_active_reflection_metadata(Program) ->
    {ok, ActiveAttributesCount} = gl:get_program_active_attributes_count(Program),
    ?assert(ActiveAttributesCount >= 1),
    {ok, ActiveAttributeMaxLength} = gl:get_program_active_attribute_max_length(Program),
    assert_positive_integer(ActiveAttributeMaxLength),
    ActiveAttributes = [
        begin
            {ok, Size, Type, Name} = gl:get_active_attrib(Program, Index, ActiveAttributeMaxLength),
            {Size, Type, Name}
        end
     || Index <- lists:seq(0, ActiveAttributesCount - 1)
    ],
    ?assert(lists:member({1, float_vec4, <<"position">>}, ActiveAttributes)),

    {ok, ActiveUniformsCount} = gl:get_program_active_uniforms_count(Program),
    ?assert(ActiveUniformsCount >= 1),
    {ok, ActiveUniformMaxLength} = gl:get_program_active_uniform_max_length(Program),
    assert_positive_integer(ActiveUniformMaxLength),
    ActiveUniforms = [
        begin
            {ok, Size, Type, Name} = gl:get_active_uniform(Program, Index, ActiveUniformMaxLength),
            {Size, Type, Name}
        end
     || Index <- lists:seq(0, ActiveUniformsCount - 1)
    ],
    ?assert(lists:member({1, float_vec4, <<"u_color">>}, ActiveUniforms)).

read_pixels_check() ->
    {ok, [Renderbuffer]} = gl:gen_renderbuffers(1),
    ok = gl:bind_renderbuffer(renderbuffer, Renderbuffer),
    ok = gl:renderbuffer_storage(renderbuffer, rgba4, 1, 1),
    {ok, [Framebuffer]} = gl:gen_framebuffers(1),
    ok = gl:bind_framebuffer(framebuffer, Framebuffer),
    ok = gl:framebuffer_renderbuffer(framebuffer, color_attachment0, renderbuffer, Renderbuffer),
    {ok, framebuffer_complete} = gl:check_framebuffer_status(framebuffer),
    ok = gl:clear_color(0.0, 0.0, 0.0, 1.0),
    ok = gl:clear([color_buffer_bit]),
    {ok, <<0, 0, 0, 255>>} = gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4),
    ok = gl:delete_framebuffers([Framebuffer]),
    ok = gl:delete_renderbuffers([Renderbuffer]),
    ok.

assert_positive_integer(Value) ->
    ?assert(is_integer(Value)),
    ?assert(Value > 0).

assert_boolean_query(Fun) ->
    {ok, Value} = Fun(),
    ?assert(is_boolean(Value)).

assert_non_negative_integer(Value) ->
    ?assert(is_integer(Value)),
    ?assert(Value >= 0).

# OpenGL ES 2.0 binding for the BEAM

[![Erlangsters Repository](https://img.shields.io/badge/erlangsters-opengl--es--2.0-%23a90432)](https://github.com/erlangsters/opengl-es-2.0)
![Supported Erlang/OTP Versions](https://img.shields.io/badge/erlang%2Fotp-28-%23a90432)
![Current Version](https://img.shields.io/badge/version-0.0.1-%23354052)
![License](https://img.shields.io/github/license/erlangsters/opengl-es-2.0)
[![Build Status](https://img.shields.io/github/actions/workflow/status/erlangsters/opengl-es-2.0/build.yml)](https://github.com/erlangsters/opengl-es-2.0/actions/workflows/build.yml)
[![Documentation Link](https://img.shields.io/badge/documentation-available-yellow)](https://erlangsters.github.io/opengl-es-2.0/)

This repository contains the generated OpenGL ES 2.0 binding for Erlang and
Elixir. The public API is exposed through the `gl` module and follows the
OpenGL ES 2.0 target selected by the Erlangsters OpenGL binding generator.

The binding uses the [EGL binding](https://github.com/erlangsters/egl-1.5) for
context and surface management. The [GLFW binding](https://github.com/erlangsters/glfw)
can be used when an application needs a window.

## Install

With Rebar3:

```erlang
{deps, [
    {egl, {git, "https://github.com/erlangsters/egl-1.5.git", {tag, "master"}}},
    {gl, {git, "https://github.com/erlangsters/opengl-es-2.0.git", {tag, "master"}}}
]}.
```

Pin a release tag or commit in applications that need reproducible builds.

## Minimal Context

```erlang
Display = egl:get_display(default_display),
{ok, _} = egl:initialize(Display),

{ok, Configs} = egl:choose_config(Display, [
    {surface_type, [pbuffer_bit]},
    {renderable_type, [opengl_es2_bit]}
]),
Config = hd(Configs),

{ok, Surface} =
    egl:create_pbuffer_surface(Display, Config, [{width, 1}, {height, 1}]),

egl:bind_api(opengl_es_api),
{ok, Context} = egl:create_context(Display, Config, no_context, [
    {context_major_version, 2},
    {context_minor_version, 0}
]),

ok = egl:make_current(Display, Surface, Surface, Context),

{ok, Version} = gl:get_string(version).
```

From Elixir, the same module is available as `:gl`:

```elixir
{:ok, version} = :gl.get_string(:version)
```

## Documentation

- [API reference](https://erlangsters.github.io/opengl-es-2.0/)
- [API mapping](docs/api-mapping.md)
- [Context and testing](docs/context-and-testing.md)
- [Limitations](docs/limitations.md)

Examples live in the
[opengl-samples](https://github.com/erlangsters/opengl-samples) repository.

## Regenerating

This repository is generated. To reproduce the generated files, build the
[OpenGL binding generator](https://github.com/erlangsters/opengl-x.y-generator)
and run:

```bash
rebar3 escriptize
./_build/default/bin/opengl_gen gles 2.0
```

Do not hand-edit generated `gl.erl`, `gl.hrl`, or `gl.c` files in this target
repository.

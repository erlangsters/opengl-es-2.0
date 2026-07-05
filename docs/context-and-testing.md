# Context And Testing

The generated `gl` module does not create contexts. It executes OpenGL commands
against the context made current by the EGL binding.

## Context Model

Create an EGL display, choose a config, create a surface, create a context, and
make that context current before calling OpenGL functions.

OpenGL ES targets link against the ES entry points directly and do not expose a
separate desktop GLAD loader function.

The EGL binding owns the BEAM-to-OS-thread current-context model. Treat the
current BEAM process as the unit that owns the current OpenGL context.

## Runtime Tests

The target EUnit suite is a binding proof suite. It checks that:

- the target repository compiles;
- the NIF loads and dispatches;
- representative public wrappers accept Erlang-shaped inputs;
- enum, bitfield, object, binary, string, list, tuple, count, and readback
  conversions work through the runtime path.

It is not an OpenGL conformance suite.

In headless environments, run tests with:

```bash
EGL_PLATFORM=surfaceless rebar3 eunit
```

Surfaceless results prove the binding on the local driver. If your application
depends on a specific OpenGL/OpenGL ES version, extension, profile, shader
feature, framebuffer behavior, or window-system surface, verify that
requirement directly.

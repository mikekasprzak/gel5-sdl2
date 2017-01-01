# GEL5 - Native C/C++ Runtime (using SDL2 and OpenGL)
C/C++ runtime for GEL5, the 5th generation version of GEL (Game Engine Library).

https://github.com/povrazor/gel5

See https://github.com/povrazor/gel5-html for the native HTML runtime.

# Setting up a GEL5 SDL2 project
TODO: this

It's a bit like setting up Dairybox (i.e. `git init`), but you can't HTML and CSS file (just JS, and assets). 

# Building
You'll need to install several preprequisites (SLD2, v8). See instructions here:

https://github.com/povrazor/gel5-sdl2/wiki/Building

You'll then need to edit a file `config.mk` to tell the toolchain where to find things. You can use `config-sample.mk` as a starting point (or just copy it to `config.mk`, and use it as is).

Then you can build the runtime using make.

```
make
```

Make only needs to be run when you make changes to the runtime. While working on your game, you only need to refresh.

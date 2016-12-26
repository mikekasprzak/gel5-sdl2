# GEL5 - Native C/C++ Runtime (using SDL2 and OpenGL)
C/C++ runtime for GEL5, the 5th generation version of GEL (Game Engine Library).

See https://github.com/povrazor/gel5-html for the native HTML runtime.

# About GEL
GEL began XX years ago as a general purpose library of elements used for creating games. From rendering, to collision detection, to physics, to UI and audio playback. Much later, a spinoff library gelHTML was made for experimenting with HTML5 projects (https://github.com/povrazor/gelhtml-2011). GEL is also closely related to Quack, an engine and library that exposes 2D and 3D game making primitives via the Squirrel programming language (similar to JavaScript).

Prior GEL versions are tied to commercial games and contain code protected by NDA's, so it tends not to be readily available.

GEL5 is an attempt to unify some of the bold ideas of GEL and the GEL related projects over the years. GEL5 games are written in JavaScript, with an emphasis on modern Ecmascript language features. It's also open source now, because why not?

# Why JavaScript?
Thanks to the internet, the world effectively now has 2 distinct low level targets: Assembly and JavaScript. JavaScript isn't a perfect language, but does offer a lot of nice things. The ability to hardcode complex data structures like JSON natively in the language, as well as functions, gives the language a lot of power. Rather than having to break-up complex data across multiple files, they cane be unified in a single file. This is super-convenient for hacking things together.

# Setting up a GEL5 SDL2 project
TODO: this

This is a bit like setting up a Node.js app, but we're not using Node. It's also a bit like setting up Dairybox (i.e. `git init`), but you can't HTML and CSS file (just JS, and assets). 

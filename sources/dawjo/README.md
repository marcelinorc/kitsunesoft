#dawjo

**dawjo** is a Digital Work Station (DAW). Is in charge hosting all *Kitsune* plugins and comunicating with the sound card.

The name came from mixing DAW with dojo.

##Features 

These are some of **dawjo** features

#### v0.1
- Host *Kitsune* plugins
- Comunicate with the sound card to produce sound
- Receive MIDI input from external devices

##Compiling dawjo

In order to compile **dawjo** you can do the following steps:

1. Create a copy of *compile-params-template.sh* and rename it to *compile-params.sh*. Place it in the **dawjo**  sources root directory (the one containing this README)
2. Edit the *compile-params.sh* to customize the build. The most important configuration variables are:
	- The path to the *arm-crosscompile.cmake* file, pointing to the cross compile file of CMake.
	- The paths to dependencies, RtAudio includes, Libs, etc.
3. Execute *cross-compile.sh*. This will call CMake with the parameters given in *compile-params.sh*, performing and "out-of-sources" compilation process. The resulting files will be placed in the *< kitsunerepo > /build* directory. Finally, it will call MAKE.
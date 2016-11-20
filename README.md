#Kitsune Software Repository

This is the Kitsune software repository.

- In the "src" folder is the sources for all projects.

- The "thirdparty" folder is for third-party needed libraries

- The "builds" folder is for the CMake out-of-source files for building.

#dawjo

**dawjo** is a Digital Work Station (DAW). Is in charge hosting all *Kitsune* plugins and comunicating with the sound card.

The name came from mixing DAW with dojo.

##Features 

These are some of **dawjo** features

#### v0.1
- Host *Kitsune* plugins
- Comunicate with the sound card to produce sound
- Receive MIDI input from external devices

##Compiling dawjo for Raspberry
1. Download the oficial gcc compiler for Rasbian here: https://github.com/raspberrypi/tools
2. Copy the */usr/lib* and */usr/include* directories to your local machine. *Put both directories as siblings in the same dir*. Otherwise CMake would not find them.
3. Open the *arm-crosscompile.cmake* file in the *kitsune/sources* directory.
4. Update the **COMPILER_ROOT** variable to point to your location of the compiler.
5. Update the **CMAKE_FIND_ROOT_PATH** to point to your location of the Raspberry */usr/lib* and */usr/include* directories.
6. Open the CMake-GUI tool, and set the cross-compiler file as described here: http://stackoverflow.com/questions/29982505/setting-a-cross-compiler-file-using-the-cmake-gui.


####Compiling from the *Kistune Dev Virtual Machine*
If you are compiling **dawjo** from the *Kitsune Dev Virtual Machine*, skip step 1 to 5. There is no need, since these steps are alredy done in the *KDVM*. 

####Generating a project for Eclipse. 
In order to generate a project for Eclipse you may follow these instructions: http://www.cmake.org/Wiki/Eclipse_CDT4_Generator

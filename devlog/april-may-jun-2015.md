#Kitsune development log

##May 8, 2015
Today I'm trying to compile the dawjo project, but I got the follwing error:
	
	/home/marcel/development/shared/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/../lib/gcc/arm-linux-gnueabihf/4.8.3/../../../../arm-linux-gnueabihf/bin/ld: warning: libasound.so.2, needed by /home/marcel/kitsune/builds/rtaudio-4.1.1-arm/librtaudio.so, not found (try using -rpath or -rpath-link)
	/home/marcel/kitsune/builds/rtaudio-4.1.1-arm/librtaudio.so: undefined reference to `snd_pcm_sw_params_sizeof@ALSA_0.9'
	/home/marcel/kitsune/builds/rtaudio-4.1.1-arm/librtaudio.so: undefined reference to `snd_pcm_readi@ALSA_0.9'

Weird: **dawjo** depends on RtAudio. Even when RtAudio depends on ALSA, I don't see a reason why it should find ALSA anyway.

I'll read this: 

http://stackoverflow.com/questions/12573816/what-is-an-undefined-reference-unresolved-external-symbol-error-and-how-do-i-fix

and also this:
https://www.ics.com/designpatterns/book/commonlinkererrors.html

**Fixed**. I linked to ALSA as well and the program compiled. Seems that the linker was not happy until it did not find the actual definitions of the ALSA functions. I openen a question in stackoverflow to enlight the matter:

http://stackoverflow.com/questions/30134910/understand-g-linker-when-a-references-b-and-b-ref-c-but-c-is-not-found

##May 9, 2015
Today I have started looking at easy ways to debug the programs. I believe the easiest way is to generate a project for Eclipse using CMake and debug remotely runing in the ARM platform. 

To create a CMake project for Eclipse I read this:

http://www.cmake.org/Wiki/Eclipse_CDT4_Generator

##May 10
Today I finally found a way to create the Eclipse projects using the CMake GUI. In order to set the cross-compile file I follow these instructions: 

http://stackoverflow.com/questions/29982505/setting-a-cross-compiler-file-using-the-cmake-gui
#Kitsune development log

##May 8, 2015
Today I'm trying to compile the dawjo project, but I got the follwing error:
	
	/home/marcel/development/shared/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/../lib/gcc/arm-linux-gnueabihf/4.8.3/../../../../arm-linux-gnueabihf/bin/ld: warning: libasound.so.2, needed by /home/marcel/kitsune/builds/rtaudio-4.1.1-arm/librtaudio.so, not found (try using -rpath or -rpath-link)
	/home/marcel/kitsune/builds/rtaudio-4.1.1-arm/librtaudio.so: undefined reference to `snd_pcm_sw_params_sizeof@ALSA_0.9'
	/home/marcel/kitsune/builds/rtaudio-4.1.1-arm/librtaudio.so: undefined reference to `snd_pcm_readi@ALSA_0.9'

Weird. dawjo depends on RtAudio. Even when RtAudio depends on ALSA, I don't see a reason why it should find ALSA
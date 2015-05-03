#############################################################################
#
# Kitsune Dawjo - Freedom to express
#
# File:     CMakeLists.txt
# Author:   Marcelino Rodriguez-Cancio <marcelino@kitsunesynth.com>

# Contents: params to build dawjo
#
#############################################################################

#Path to the cross compiler file
cross_cmp_file="../../arm-crosscompile.cmake"

#build test
build_test="true" #or false

#-------------------------------------------
# DEPENDENCIES
#-------------------------------------------

#Link with RtAudio static or dynamic
static_link_RtAudio="false" #or true

#Default RtAudio Include dir
rt_audio_include_dir="../../thirdparty/rtaudio-4.1.1/"

#Default RtAudio library dir
rt_audio_library="../../builds/rtaudio-4.1.1-arm/librtaudio.so"


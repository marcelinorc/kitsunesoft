#############################################################################
#
# Kitsune Dawjo - Freedom to express
#
# File:     cross-compile-cmake.txt
# Author:   Marcelino Rodriguez-Cancio <marcelino@kitsunesynth.com>
# Contents: CMake Find Module
#
# Script to run CMake with parameters.
#
# Specifying the cross compilation archive to compile to ARM and other
# compilation parameters 
#
# DO NOT modify this file, create a copy of it and set the variables 
# depending on your system configuration
#
#############################################################################

#!/bin/sh 
source "$(dirname $0)/compile-params.sh"

echo ""
echo "### BUILDING KITSUNE DAWJO ###"
echo "### CONFIGURATION VALUES ###"
nc=`tput setaf 7`
color=`tput setaf 2`
bold=`tput bold`
normal=`tput sgr0`
echo "${color} ${bold} Cross compile file:.....${normal} $cross_cmp_file"
echo "${color} ${bold} Build tests:............${normal} $build_test"
echo "${color} ${bold} Static link RtAudio:....${normal} $static_link_RtAudio"
echo "${color} ${bold} Default RtAudio Include:${normal} $rt_audio_include"
echo "${color} ${bold} Default RtAudio Library:${normal} $rt_audio_library"
echo `tput sgr0`

#Go to build directory
cd ../../
if [ ! -d "builds" ]; then
  mkdir builds
fi
cd builds
if [ ! -d "dawjo" ]; then
  mkdir dawjo
fi
cd dawjo

echo "Hello" > world.txt

#Call cmake with the given options
cmake \
-D CMAKE_TOOLCHAIN_FILE=$cross_cmp_file \
-D BUILD_TESTS:BOOLEAN=$build_test \
-D RtAudio_LINK_STATIC:BOOLEAN=$static_link_RtAudio \
-D RtAudio_LIBRARY_DEFAULT=$rt_audio_library \
-D RtAudio_INCLUDE_DEFAULT=$rt_audio_include \
../../sources/dawjo #> cmake_output.txt

echo ""
echo "### CONFIGURATION DONE ###"
echo "### RUNNING MAKE: ###"
echo ""
make VERBOSE=1 > make_output.txt
echo ""
echo "### MAKE DONE ###"


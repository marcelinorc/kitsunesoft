#############################################################################
#
# Kitsune Dawjo - Freedom to express
#
# File:     CMakeLists.txt
# Author:   Marcelino Rodriguez-Cancio <marcelino@kitsunesynth.com>

# Contents: Main CMake for dawjo project
#
#############################################################################

cmake_minimum_required(VERSION 2.8.10)

project(kitsune_dawjo)

#OPTIONS
# Build test option
option ( BUILD_TESTS "Indicate wether we should build the test or not" ON) 

#CMAKE cross compiler file (NOT WORKING)
#set(CMAKE_TOOLCHAIN_FILE "CMake toolchain file" CACHE FILEPATH "../../arm-crosscompile.cmake")

#Module directory.
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")

#Alsa is the libray to talk to the sound card
find_package(ALSA REQUIRED)

#RtAudio is a library to abstract the sound system and make it potable for 
#human use. Is a thin layer on top of ALSA, making it easier to work with
find_package(RtAudio REQUIRED)


if (BUILD_TESTS)
  add_subdirectory (test)
endif ()

add_subdirectory (src) 


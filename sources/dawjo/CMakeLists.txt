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

project(dawjo)

#OPTIONS
# Build test option
option ( BUILD_TESTS "Indicate wether we should build the test or not" ON) 

#CMAKE cross compiler file (NOT WORKING)
#set(CMAKE_TOOLCHAIN_FILE "CMake toolchain file" CACHE FILEPATH "../../arm-crosscompile.cmake")

#Module directory.
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")

#RtAudio is a library to abstract the sound system 
#find_package(ALSA REQUIRED)
find_package(RtAudio REQUIRED)


if (BUILD_TESTS)
  add_subdirectory (test)
endif ()

add_subdirectory (src) 


#############################################################################
#
# Kitsune Dawjo - Freedom to express
#
# File:     CMakeLists.txt 
# Author:   Marcelino Rodriguez-Cancio <marcelino@kitsunesynth.com>
#
# Content:  CMake file for the dawjo executable
#
#############################################################################

add_executable(dawjo main.cpp)

target_link_libraries(dawjo ${RtAudio_LIBRARY})

message(STATUS "Includes: ${RtAudio_INCLUDE_DIRS}")
include_directories(dawjo ${RtAudio_INCLUDE_DIRS})



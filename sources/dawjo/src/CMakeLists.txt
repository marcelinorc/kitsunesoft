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

add_executable(dawjoMain main.cpp)

target_link_libraries(dawjoMain ${RtAudio_LIBRARIES} ${ALSA_LIBRARIES})

message(STATUS "Includes: ${RtAudio_INCLUDE_DIRS}")
include_directories(dawjoMain ${RtAudio_INCLUDE_DIRS})



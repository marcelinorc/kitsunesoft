###################################################################################
# 
# Kitsune Dawjo - Freedom to express
#
# File:     CMakeLists.txt
# Author:   Marcelino Rodriguez-Cancio <marcelino@kitsunesynth.com>
# Contents: CMake Find Module
#
# Features for this file
# 1. Be able to find the "standard" distribution of RtAudio that can be 
#    installed in Linux
# 2. Be able to link to a custom RtAudio provided by the user (i.e for cross-comp)
# 3. Be able to link to an static or dynamic version of the program
# 4. Be able to link to a debug/release version of the library
#
#
# If you want to use this file for a cross compilation, then you should be fine
# because you should have already set the CMake cross compiler file. In that
# file the CMAKE_PREFIX is set.
##################################################################################

#Finds the RtAudio library allowing a paths
#to include and library passed as parameter to CMAKE

if (RtAudio_INCLUDE_DEFAULT)
  message(STATUS "Using RtAudio includes provided by user") 
  set( RtAudio_INCLUDE_DIR ${RtAudio_INCLUDE_DEFAULT} )
else ()
  find_path(RtAudio_INCLUDE_DIR NAMES RtAudio.h
          DOC "The RtAudio include directory")
endif ()

if (RtAudio_LIBRARY_DEFAULT)
  message(STATUS "Using RtAudio Library provided by user")
  set( RtAudio_LIBRARY ${RtAudio_LIBRARY_DEFAULT} )
else ()
  if ( RtAudio_LINK_STATIC )
    find_library(RtAudio_LIBRARY NAMES librtaudio_static.a ) 
  else ()
    if ( CMAKE_BUILD_TYPE MATCHES DEBUG )
      find_library(RtAudio_LIBRARY NAMES librtaudio-dbg.so )    
    else ()    
      find_library(RtAudio_LIBRARY NAMES librtaudio.so ) 
    endif()
  endif()
endif ()

message(STATUS "RtAudio Library: ${RtAudio_LIBRARY}")
message(STATUS "RtAudio Inc: ${RtAudio_INCLUDE_DIR}")

set( RtAudio_LIBRARIES ${RtAudio_LIBRARY} )
set( RtAudio_INCLUDE_DIRS ${RtAudio_INCLUDE_DIR} )

if ( RtAudio_LIBRARY AND RtAudio_INCLUDE_DIR )
  message(STATUS "RtAudio found" )
  set( RtAudio_FOUND 1 )
endif ()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(RtAudio DEFAULT_MSG RtAudio_LIBRARY RtAudio_INCLUDE_DIR)

# handle the QUIETLY and REQUIRED arguments and set RtAudio_FOUND to TRUE
# if all listed variables are TRUE
#
#
#mark_as_advanced(LIBXML2_INCLUDE_DIR LIBXML2_LIBRARY )



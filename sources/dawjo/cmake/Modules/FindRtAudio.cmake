#############################################################################
# 
# Kitsune Dawjo - Freedom to express
#
# File:     CMakeLists.txt
# Author:   Marcelino Rodriguez-Cancio <marcelino@kitsunesynth.com>
# Contents: CMake Find Module
#
#############################################################################

#find_package(PkgConfig)
#pkg_check_modules(PC_LIBXML QUIET libxml-2.0)
#set(LIBXML2_DEFINITIONS ${PC_LIBXML_CFLAGS_OTHER})

#Finds the RtAudio library allowing a paths
#to include and library passed as parameter to CMAKE
if (RtAudio_INCLUDE_DEFAULT)
  message(STATUS "Using RtAudio includes provided by user") 
  set( RtAudio_INCLUDE_DIR ${RtAudio_INCLUDE_DEFAULT} )
else ()
  find_path(RtAudio_INCLUDE_DIR NAMES RtAudio.h)
endif ()

if (RtAudio_LIBRARY_DEFAULT)
  message(STATUS "Using RtAudio Library provided by user")
  set( RtAudio_LIBRARY ${RtAudio_LIBRARY_DEFAULT} )
else ()
  if ( ${RtAudio_LINK_STATIC} )
    find_library(RtAudio_LIBRARY NAMES libRtAudio_static.a ) #This will not work with the standar package linux
  else ()
    find_library(RtAudio_LIBRARY NAMES libRtAudio.so ) #This will not work with the standar package linux
  endif ()
endif ()

message(STATUS "RtAudio Library: ${RtAudio_LIBRARY}")
message(STATUS "RtAudio Inc: ${RtAudio_INCLUDE_DIR}")

set( RtAudio_LIBRARIES ${RtAudio_LIBRARY} )
set( RtAudio_INCLUDE_DIRS ${RtAudio_INCLUDE_DIR} )

if ( RtAudio_LIBRARY AND RtAudio_INCLUDE_DIR )
  message(STATUS "RtAudio found" )
  set( RtAudio_FOUND 1 )
endif ()

# handle the QUIETLY and REQUIRED arguments and set RtAudio_FOUND to TRUE
# if all listed variables are TRUE
#include(FindPackageHandleStandardArgs)
#find_package_handle_standard_args(RtAudio DEFAULT_MSG RtAudio_LIBRARY RtAudio_INCLUDE_DIR)
#mark_as_advanced(LIBXML2_INCLUDE_DIR LIBXML2_LIBRARY )



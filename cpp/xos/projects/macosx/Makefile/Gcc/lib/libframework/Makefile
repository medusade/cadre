########################################################################
# Copyright (c) 1988-2017 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: Makefile
#
# Author: $author$
#   Date: 9/3/2017
#
# Macosx Gcc Makefile for framework Library libframework
########################################################################
OS = macosx
PKG = ../../../../../..

BMK = build/Makefile/Gcc
MAK = projects/Makefile/Gcc
PRJ = projects/${OS}/Makefile/Gcc
SRC = src

include $(PKG)/$(BMK)/Makedefines
include $(PKG)/$(MAK)/Makedefines
include $(PKG)/$(BMK)/Makefile
include $(PKG)/$(MAK)/Makefile
include $(PKG)/$(MAK)/lib/libframework/Makefile

#
# target
#
LIBTARGET = ${libframework_LIBTARGET}

########################################################################

#
# user defines
#
USRDEFINES = \
${libframework_USRDEFINES}

#
# user includes
#
USRINCLUDES = \
${libframework_USRINCLUDES}

#
# user libdirs
#
USRLIBDIRS = \
${libframework_USRLIBDIRS}

#
# user c++ flags
#
USRCXXFLAGS = \
${libframework_USRCXXFLAGS}

#
# user c flags
#
USRCFLAGS = \

#
# user ld flags
#
USRLDFLAGS = \

########################################################################

#
# Static Library C sources
#
LIB_C_SOURCES = \
${libframework_LIB_C_SOURCES}

#
# Static Library C++ .cc sources
#
LIB_CC_SOURCES = \
${libframework_LIB_CC_SOURCES}

#
# Static Library C++ .cxx sources
#
LIB_CXX_SOURCES = \
${libframework_LIB_CXX_SOURCES}

#
# Static Library C++ .cpp sources
#
LIB_CPP_SOURCES = \
${libframework_LIB_CPP_SOURCES}

#
# Static Library Objective C .m sources
#
LIB_M_SOURCES = \
${libframework_LIB_M_SOURCES}

#
# Static Library Objective C++ .mm sources
#
LIB_MM_SOURCES = \
${libframework_LIB_MM_SOURCES}

########################################################################

#
# Static Library depends
#
#LIBDEP = \
#$(PKG)/$(BLD)/libsomelib \
#
LIBDEP = \

#
# Static Library depend dirs
#
#LIBDEP_DIRS = \
#../libsomelib
#
LIBDEP_DIRS = \

include $(PKG)/$(MAK)/Makerules

#
# Static Library depend rules
#
#$(PKG)/$(BLD)/libsomelib.a:
#	@(echo Building libsomelib.a ...;\
#	  pushd ../libsomelib;\
#	  ((make) || (exit 1));\
#	  popd)
#


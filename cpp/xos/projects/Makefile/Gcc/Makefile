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
#   Date: 8/31/2017
#
# generic Gcc Makefile for framework
########################################################################
FRAMEWORK_PKG = ${PKG}
FRAMEWORK_SRC = ${FRAMEWORK_PKG}/src
FRAMEWORK_BLD = ${FRAMEWORK_PKG}/${BLD}/${BUILD_TYPE}
FRAMEWORK_LIB = ${FRAMEWORK_BLD}/lib
FRAMEWORK_BIN = ${FRAMEWORK_BLD}/bin

########################################################################
# depends
DEPENDS_PKG = ${FRAMEWORK_PKG}/../../../rostra/cpp/xos
DEPENDS_SRC = ${DEPENDS_PKG}/src
DEPENDS_BLD = ${DEPENDS_PKG}/${BLD}/${BUILD_TYPE}
DEPENDS_LIB = ${DEPENDS_BLD}/lib
DEPENDS_BIN = ${DEPENDS_BLD}/bin

########################################################################
# framework
framework_USRDEFINES += \
${build_framework_USRDEFINES} \

framework_USRINCLUDES += \
-I${FRAMEWORK_SRC} \
-I${DEPENDS_SRC} \
${build_framework_USRINCLUDES} \

framework_USRCXXFLAGS += \
-std=c++0x \
${build_framework_USRCXXFLAGS} \

framework_USRLIBDIRS += \
-L${FRAMEWORK_LIB} \
-L${DEPENDS_LIB} \
${build_framework_USRLIBDIRS} \

framework_LIBS += \
-lframework \
${build_framework_LIBS} \

########################################################################


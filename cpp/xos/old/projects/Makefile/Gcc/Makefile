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
#   Date: 7/16/2017
#
# generic Gcc Makefile for framework
########################################################################
FRAMEWORK_PKG = ${PKG}
FRAMEWORK_SRC = ${FRAMEWORK_PKG}/src
FRAMEWORK_BLD = ${FRAMEWORK_PKG}/${BLD}/${BUILD_TYPE}
FRAMEWORK_LIB = ${FRAMEWORK_BLD}/lib
FRAMEWORK_BIN = ${FRAMEWORK_BLD}/bin

########################################################################
# nadir
NADIR_PKG = ${FRAMEWORK_PKG}/../nadir
NADIR_SRC = ${NADIR_PKG}/src
NADIR_BLD = ${NADIR_PKG}/${BLD}/${BUILD_TYPE}
NADIR_LIB = ${NADIR_BLD}/lib
NADIR_BIN = ${NADIR_BLD}/bin

nadir_USRDEFINES += \


nadir_USRINCLUDES += \
-I{NADIR_SRC} \

nadir_USRCXXFLAGS += \


nadir_USRLIBDIRS += \
-L{NADIR_LIB} \

nadir_LIBS += \
-lnadir \

########################################################################
# crono
CRONO_PKG = ${FRAMEWORK_PKG}/../crono
CRONO_SRC = ${CRONO_PKG}/src
CRONO_BLD = ${CRONO_PKG}/${BLD}/${BUILD_TYPE}
CRONO_LIB = ${CRONO_BLD}/lib
CRONO_BIN = ${CRONO_BLD}/bin

crono_USRDEFINES += \


crono_USRINCLUDES += \
-I{CRONO_SRC} \

crono_USRCXXFLAGS += \


crono_USRLIBDIRS += \
-L{CRONO_LIB} \

crono_LIBS += \
-lcrono \

########################################################################
# archa
ARCHA_PKG = ${FRAMEWORK_PKG}/../archa
ARCHA_SRC = ${ARCHA_PKG}/src
ARCHA_BLD = ${ARCHA_PKG}/${BLD}/${BUILD_TYPE}
ARCHA_LIB = ${ARCHA_BLD}/lib
ARCHA_BIN = ${ARCHA_BLD}/bin

archa_USRDEFINES += \


archa_USRINCLUDES += \
-I{ARCHA_SRC} \

archa_USRCXXFLAGS += \


archa_USRLIBDIRS += \
-L{ARCHA_LIB} \

archa_LIBS += \
-larcha \

########################################################################
# fila
FILA_PKG = ${FRAMEWORK_PKG}/../fila
FILA_SRC = ${FILA_PKG}/src
FILA_BLD = ${FILA_PKG}/${BLD}/${BUILD_TYPE}
FILA_LIB = ${FILA_BLD}/lib
FILA_BIN = ${FILA_BLD}/bin

fila_USRDEFINES += \


fila_USRINCLUDES += \
-I{FILA_SRC} \

fila_USRCXXFLAGS += \


fila_USRLIBDIRS += \
-L{FILA_LIB} \

fila_LIBS += \
-lfila \

########################################################################
# rete
RETE_PKG = ${FRAMEWORK_PKG}/../rete
RETE_SRC = ${RETE_PKG}/src
RETE_BLD = ${RETE_PKG}/${BLD}/${BUILD_TYPE}
RETE_LIB = ${RETE_BLD}/lib
RETE_BIN = ${RETE_BLD}/bin

rete_USRDEFINES += \


rete_USRINCLUDES += \
-I{RETE_SRC} \

rete_USRCXXFLAGS += \


rete_USRLIBDIRS += \
-L{RETE_LIB} \

rete_LIBS += \
-lrete \

########################################################################
# stara
STARA_PKG = ${FRAMEWORK_PKG}/../stara
STARA_SRC = ${STARA_PKG}/src
STARA_BLD = ${STARA_PKG}/${BLD}/${BUILD_TYPE}
STARA_LIB = ${STARA_BLD}/lib
STARA_BIN = ${STARA_BLD}/bin

stara_USRDEFINES += \


stara_USRINCLUDES += \
-I{STARA_SRC} \

stara_USRCXXFLAGS += \


stara_USRLIBDIRS += \
-L{STARA_LIB} \

stara_LIBS += \
-lstara \

########################################################################
# porta
PORTA_PKG = ${FRAMEWORK_PKG}/../porta
PORTA_SRC = ${PORTA_PKG}/src
PORTA_BLD = ${PORTA_PKG}/${BLD}/${BUILD_TYPE}
PORTA_LIB = ${PORTA_BLD}/lib
PORTA_BIN = ${PORTA_BLD}/bin

porta_USRDEFINES += \


porta_USRINCLUDES += \
-I{PORTA_SRC} \

porta_USRCXXFLAGS += \


porta_USRLIBDIRS += \
-L{PORTA_LIB} \

porta_LIBS += \
-lporta \

########################################################################
# framework
framework_USRDEFINES += \
${nadir_USRDEFINES} \
${crono_USRDEFINES} \
${archa_USRDEFINES} \
${fila_USRDEFINES} \
${rete_USRDEFINES} \
${stara_USRDEFINES} \
${porta_USRDEFINES} \


framework_USRINCLUDES += \
${nadir_USRINCLUDES} \
${crono_USRINCLUDES} \
${archa_USRINCLUDES} \
${fila_USRINCLUDES} \
${rete_USRINCLUDES} \
${stara_USRINCLUDES} \
${porta_USRINCLUDES} \


framework_USRCXXFLAGS += \
${nadir_USRCXXFLAGS} \
${crono_USRCXXFLAGS} \
${archa_USRCXXFLAGS} \
${fila_USRCXXFLAGS} \
${rete_USRCXXFLAGS} \
${stara_USRCXXFLAGS} \
${porta_USRCXXFLAGS} \


framework_USRLIBDIRS += \
${nadir_USRLIBDIRS} \
${crono_USRLIBDIRS} \
${archa_USRLIBDIRS} \
${fila_USRLIBDIRS} \
${rete_USRLIBDIRS} \
${stara_USRLIBDIRS} \
${porta_USRLIBDIRS} \


framework_LIBS += \
${nadir_LIBS} \
${crono_LIBS} \
${archa_LIBS} \
${fila_LIBS} \
${rete_LIBS} \
${stara_LIBS} \
${porta_LIBS} \



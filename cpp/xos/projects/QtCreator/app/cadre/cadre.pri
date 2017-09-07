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
#   File: cadre.pri
#
# Author: $author$
#   Date: 9/4/2017
#
# QtCreator .pri file for cadre executable cadre
########################################################################

cadre_exe_TARGET = cadre

########################################################################
cadre_exe_INCLUDEPATH += \
$${cadre_INCLUDEPATH} \

cadre_exe_DEFINES += \
$${cadre_DEFINES} \

########################################################################
# cadre
cadre_exe_HEADERS += \
$${CADRE_SRC}/xos/console/Main_main.hpp \

cadre_exe_SOURCES += \
$${CADRE_SRC}/xos/console/Main_main.cpp \

########################################################################
cadre_exe_LIBS += \
$${cadre_LIBS} \




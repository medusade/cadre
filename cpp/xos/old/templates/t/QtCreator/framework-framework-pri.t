%########################################################################
%# Copyright (c) 1988-2017 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: framework-framework-pri.t
%#
%# Author: $author$
%#   Date: 6/6/2017
%########################################################################
%with(%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%Filepath,%(%else-then(%Filepath%,%(%filepath%)%)%)%,%
%FILEPATH,%(%else-then(%FILEPATH%,%(%toupper(%Filepath%)%)%)%)%,%
%filepath,%(%else-then(%_Filepath%,%(%tolower(%Filepath%)%)%)%)%,%
%framework,%(%else-then(%framework%,%(Framework)%)%)%,%
%Framework,%(%else-then(%Framework%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%target,%(%else-then(%target%,%(%Framework%)%)%)%,%
%Target,%(%else-then(%Target%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%os,%(%else-then(%os%,%(macosx)%)%)%,%
%Os,%(%else-then(%Os%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%file,%(%else-then(%file%,%(%Target%)%)%)%,%
%File,%(%else-then(%File%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%extension,%(%else-then(%extension%,%(pri)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%bin,%(%else-then(%bin%,%(bin)%)%)%,%
%Bin,%(%else-then(%Bin%,%(%bin%)%)%)%,%
%BIN,%(%else-then(%BIN%,%(%toupper(%Bin%)%)%)%)%,%
%bin,%(%else-then(%_Bin%,%(%tolower(%Bin%)%)%)%)%,%
%lib,%(%else-then(%lib%,%(lib)%)%)%,%
%Lib,%(%else-then(%Lib%,%(%lib%)%)%)%,%
%LIB,%(%else-then(%LIB%,%(%toupper(%Lib%)%)%)%)%,%
%lib,%(%else-then(%_Lib%,%(%tolower(%Lib%)%)%)%)%,%
%src,%(%else-then(%src%,%(src)%)%)%,%
%Src,%(%else-then(%Src%,%(%src%)%)%)%,%
%SRC,%(%else-then(%SRC%,%(%toupper(%Src%)%)%)%)%,%
%src,%(%else-then(%_Src%,%(%tolower(%Src%)%)%)%)%,%
%%(########################################################################
# Copyright (c) 1988-%year()% $organization$
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
#   File: %File%.%Extension%
#
# Author: $author$
#   Date: %date()%
########################################################################
FRAMEWORK_PKG = ../../../../..
FRAMEWORK_BLD = ../..

FRAMEWORK_PRJ = $${FRAMEWORK_PRO_DIR}$${FRAMEWORK_PKG}
FRAMEWORK_BIN = $${FRAMEWORK_BLD}/%Bin%
FRAMEWORK_LIB = $${FRAMEWORK_BLD}/%Lib%
FRAMEWORK_SRC = $${FRAMEWORK_PRJ}/%Src%

########################################################################
CONFIG(debug, debug|release) {
FRAMEWORK_CONFIG = Debug
framework_DEFINES += DEBUG_BUILD
} else {
FRAMEWORK_CONFIG = Release
framework_DEFINES += RELEASE_BUILD
}
framework_DEFINES += BUILD_CONFIG=$${FRAMEWORK_CONFIG}
)%)%
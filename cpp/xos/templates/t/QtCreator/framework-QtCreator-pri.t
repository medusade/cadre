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
%#   File: framework-QtCreator-pri.t
%#
%# Author: $author$
%#   Date: 9/2/2017
%########################################################################
%with(%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%Filepath,%(%else-then(%Filepath%,%(%filepath%)%)%)%,%
%FILEPATH,%(%else-then(%FILEPATH%,%(%toupper(%Filepath%)%)%)%)%,%
%filepath,%(%else-then(%_Filepath%,%(%tolower(%Filepath%)%)%)%)%,%
%organization,%(%else-then(%organization%,%($organization$)%)%)%,%
%Organization,%(%else-then(%Organization%,%(%organization%)%)%)%,%
%ORGANIZATION,%(%else-then(%ORGANIZATION%,%(%toupper(%Organization%)%)%)%)%,%
%organization,%(%else-then(%_Organization%,%(%tolower(%Organization%)%)%)%)%,%
%author,%(%else-then(%author%,%($author$)%)%)%,%
%Author,%(%else-then(%Author%,%(%author%)%)%)%,%
%AUTHOR,%(%else-then(%AUTHOR%,%(%toupper(%Author%)%)%)%)%,%
%author,%(%else-then(%_Author%,%(%tolower(%Author%)%)%)%)%,%
%date,%(%else-then(%date%,%(%date()%)%)%)%,%
%Date,%(%else-then(%Date%,%(%date%)%)%)%,%
%DATE,%(%else-then(%DATE%,%(%toupper(%Date%)%)%)%)%,%
%date,%(%else-then(%_Date%,%(%tolower(%Date%)%)%)%)%,%
%year,%(%else-then(%year%,%(%year()%)%)%)%,%
%Year,%(%else-then(%Year%,%(%year%)%)%)%,%
%YEAR,%(%else-then(%YEAR%,%(%toupper(%Year%)%)%)%)%,%
%year,%(%else-then(%_Year%,%(%tolower(%Year%)%)%)%)%,%
%month,%(%else-then(%month%,%(%month()%)%)%)%,%
%Month,%(%else-then(%Month%,%(%month%)%)%)%,%
%MONTH,%(%else-then(%MONTH%,%(%toupper(%Month%)%)%)%)%,%
%month,%(%else-then(%_Month%,%(%tolower(%Month%)%)%)%)%,%
%day,%(%else-then(%day%,%(%day()%)%)%)%,%
%Day,%(%else-then(%Day%,%(%day%)%)%)%,%
%DAY,%(%else-then(%DAY%,%(%toupper(%Day%)%)%)%)%,%
%day,%(%else-then(%_Day%,%(%tolower(%Day%)%)%)%)%,%
%depends,%(%else-then(%depends%,%()%)%)%,%
%Depends,%(%else-then(%Depends%,%(%depends%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_Depends%,%(%tolower(%Depends%)%)%)%)%,%
%framework,%(%else-then(%framework%,%(framework)%)%)%,%
%Framework,%(%else-then(%Framework%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%target,%(%else-then(%target%,%()%)%)%,%
%Target,%(%else-then(%Target%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%os,%(%else-then(%os%,%()%)%)%,%
%Os,%(%else-then(%Os%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%language,%(%else-then(%language%,%(cpp)%)%)%,%
%Language,%(%else-then(%Language%,%(%language%)%)%)%,%
%LANGUAGE,%(%else-then(%LANGUAGE%,%(%toupper(%Language%)%)%)%)%,%
%language,%(%else-then(%_Language%,%(%tolower(%Language%)%)%)%)%,%
%style,%(%else-then(%style%,%(xos)%)%)%,%
%Style,%(%else-then(%Style%,%(%style%)%)%)%,%
%STYLE,%(%else-then(%STYLE%,%(%toupper(%Style%)%)%)%)%,%
%style,%(%else-then(%_Style%,%(%tolower(%Style%)%)%)%)%,%
%pro,%(%else-then(%pro%,%(pri)%)%)%,%
%Pro,%(%else-then(%Pro%,%(%pro%)%)%)%,%
%PRO,%(%else-then(%PRO%,%(%toupper(%Pro%)%)%)%)%,%
%pro,%(%else-then(%_Pro%,%(%tolower(%Pro%)%)%)%)%,%
%makefile,%(%else-then(%makefile%,%(QtCreator)%)%)%,%
%Makefile,%(%else-then(%Makefile%,%(%makefile%)%)%)%,%
%MAKEFILE,%(%else-then(%MAKEFILE%,%(%toupper(%Makefile%)%)%)%)%,%
%makefile,%(%else-then(%_Makefile%,%(%tolower(%Makefile%)%)%)%)%,%
%extension,%(%else-then(%extension%,%(%else-then(%fileextension(%file%)%,%(%Pro%)%)%)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%file,%(%else-then(%file%,%(%Framework%%then-if(%Extension%,.)%)%)%)%,%
%File,%(%else-then(%File%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%title,%(%else-then(%title%,%(%Makefile%%then-if(%if-then(%Extension%, file)%, .)%%then-if(%Framework%, for )%)%)%)%,%
%Title,%(%else-then(%Title%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%%include(%Filepath%/QtCreator-file.t)%%
%
OTHER_PKG = ../../../../../../../..
OTHER_BLD = ..

%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(%
%########################################################################
# %Depends%
%DEPENDS%_PKG = $${OTHER_PKG}/%Depends%/%Language%/%Style%
%DEPENDS%_PRJ = $${%DEPENDS%_PKG}
%DEPENDS%_SRC = $${%DEPENDS%_PKG}/src

%Depends%_INCLUDEPATH += \
$${%DEPENDS%_SRC} \

%Depends%_DEFINES += \

%Depends%_LIBS += \

)%)%%
%)%,Depends)%

########################################################################
# %Framework%
%FRAMEWORK%_PKG = ../../../../..
%FRAMEWORK%_BLD = ../..

%FRAMEWORK%_PRJ = $${%FRAMEWORK%_PKG}
%FRAMEWORK%_BIN = $${%FRAMEWORK%_BLD}/bin
%FRAMEWORK%_LIB = $${%FRAMEWORK%_BLD}/lib
%FRAMEWORK%_SRC = $${%FRAMEWORK%_PKG}/src

CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
%Framework%_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
%Framework%_DEFINES += RELEASE_BUILD
}

%Framework%_INCLUDEPATH += \
$${%FRAMEWORK%_SRC} \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%($${%Depends%_INCLUDEPATH} \
)%)%%
%)%,Depends)%%
%$${build_%Framework%_INCLUDEPATH} \

%Framework%_DEFINES += \
%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%($${%Depends%_DEFINES} \
)%)%%
%)%,Depends)%%
%$${build_%Framework%_DEFINES} \

%Framework%_LIBS += \
-L$${%FRAMEWORK%_LIB}/lib%Framework% \
-l%Framework% \

%
%)%)%

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
%#   File: framework-generic-target-Gcc-Makefile.t
%#
%# Author: $author$
%#   Date: 8/30/2017
%########################################################################
%with(%
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
%framework,%(%else-then(%framework%,%(Framework)%)%)%,%
%Framework,%(%else-then(%Framework%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%target,%(%else-then(%target%,%(%Framework%)%)%)%,%
%Target,%(%else-then(%Target%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%makefile,%(%else-then(%makefile%,%(Makefile)%)%)%,%
%Makefile,%(%else-then(%Makefile%,%(%makefile%)%)%)%,%
%MAKEFILE,%(%else-then(%MAKEFILE%,%(%toupper(%Makefile%)%)%)%)%,%
%makefile,%(%else-then(%_Makefile%,%(%tolower(%Makefile%)%)%)%)%,%
%extension,%(%else-then(%extension%,%(%fileextension(%file%)%)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%file,%(%else-then(%file%,%(%Makefile%)%)%)%,%
%File,%(%else-then(%File%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%title,%(%else-then(%title%,%(Gcc %Makefile%%then-if(%Framework%%then-if(%Target%, )%, for )%)%)%)%,%
%Title,%(%else-then(%Title%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%framework_USRDEFINES,%(%else-then(%framework_USRDEFINES%,%(${%Framework%_USRDEFINES} \
)%)%)%,%
%Framework_USRDEFINES,%(%else-then(%Framework_USRDEFINES%,%(%framework_USRDEFINES%)%)%)%,%
%FRAMEWORK_USRDEFINES,%(%else-then(%FRAMEWORK_USRDEFINES%,%(%toupper(%Framework_USRDEFINES%)%)%)%)%,%
%framework_USRDEFINES,%(%else-then(%_Framework_USRDEFINES%,%(%tolower(%Framework_USRDEFINES%)%)%)%)%,%
%framework_USRINCLUDES,%(%else-then(%framework_USRINCLUDES%,%(${%Framework%_USRINCLUDES} \
)%)%)%,%
%Framework_USRINCLUDES,%(%else-then(%Framework_USRINCLUDES%,%(%framework_USRINCLUDES%)%)%)%,%
%FRAMEWORK_USRINCLUDES,%(%else-then(%FRAMEWORK_USRINCLUDES%,%(%toupper(%Framework_USRINCLUDES%)%)%)%)%,%
%framework_USRINCLUDES,%(%else-then(%_Framework_USRINCLUDES%,%(%tolower(%Framework_USRINCLUDES%)%)%)%)%,%
%framework_USRCXXFLAGS,%(%else-then(%framework_USRCXXFLAGS%,%($(%Framework%_USRCXXFLAGS} \
)%)%)%,%
%Framework_USRCXXFLAGS,%(%else-then(%Framework_USRCXXFLAGS%,%(%framework_USRCXXFLAGS%)%)%)%,%
%FRAMEWORK_USRCXXFLAGS,%(%else-then(%FRAMEWORK_USRCXXFLAGS%,%(%toupper(%Framework_USRCXXFLAGS%)%)%)%)%,%
%framework_USRCXXFLAGS,%(%else-then(%_Framework_USRCXXFLAGS%,%(%tolower(%Framework_USRCXXFLAGS%)%)%)%)%,%
%framework_USRCFLAGS,%(%else-then(%framework_USRCFLAGS%,%($(%Framework%_USRCFLAGS} \
)%)%)%,%
%Framework_USRCFLAGS,%(%else-then(%Framework_USRCFLAGS%,%(%framework_USRCFLAGS%)%)%)%,%
%FRAMEWORK_USRCFLAGS,%(%else-then(%FRAMEWORK_USRCFLAGS%,%(%toupper(%Framework_USRCFLAGS%)%)%)%)%,%
%framework_USRCFLAGS,%(%else-then(%_Framework_USRCFLAGS%,%(%tolower(%Framework_USRCFLAGS%)%)%)%)%,%
%framework_USRLIBDIRS,%(%else-then(%framework_USRLIBDIRS%,%(${%Framework%_USRLIBDIRS} \
)%)%)%,%
%Framework_USRLIBDIRS,%(%else-then(%Framework_USRLIBDIRS%,%(%framework_USRLIBDIRS%)%)%)%,%
%FRAMEWORK_USRLIBDIRS,%(%else-then(%FRAMEWORK_USRLIBDIRS%,%(%toupper(%Framework_USRLIBDIRS%)%)%)%)%,%
%framework_USRLIBDIRS,%(%else-then(%_Framework_USRLIBDIRS%,%(%tolower(%Framework_USRLIBDIRS%)%)%)%)%,%
%framework_USRLDFLAGS,%(%else-then(%framework_USRLDFLAGS%,%($(%Framework%_USRLDFLAGS} \
)%)%)%,%
%Framework_USRLDFLAGS,%(%else-then(%Framework_USRLDFLAGS%,%(%framework_USRLDFLAGS%)%)%)%,%
%FRAMEWORK_USRLDFLAGS,%(%else-then(%FRAMEWORK_USRLDFLAGS%,%(%toupper(%Framework_USRLDFLAGS%)%)%)%)%,%
%framework_USRLDFLAGS,%(%else-then(%_Framework_USRLDFLAGS%,%(%tolower(%Framework_USRLDFLAGS%)%)%)%)%,%
%framework_LIBS,%(%else-then(%framework_LIBS%,%(${%Framework%_LIBS} \
)%)%)%,%
%Framework_LIBS,%(%else-then(%Framework_LIBS%,%(%framework_LIBS%)%)%)%,%
%FRAMEWORK_LIBS,%(%else-then(%FRAMEWORK_LIBS%,%(%toupper(%Framework_LIBS%)%)%)%)%,%
%framework_LIBS,%(%else-then(%_Framework_LIBS%,%(%tolower(%Framework_LIBS%)%)%)%)%,%
%user,%(%else-then(%user%,%(defines;includes;cxxflags;cflags;libdirs;ldflags)%)%)%,%
%User,%(%else-then(%User%,%(%user%)%)%)%,%
%USER,%(%else-then(%USER%,%(%toupper(%User%)%)%)%)%,%
%user,%(%else-then(%_User%,%(%tolower(%User%)%)%)%)%,%
%sources,%(%else-then(%sources%,%(C;CC;CXX;CPP;M;MM)%)%)%,%
%Sources,%(%else-then(%Sources%,%(%sources%)%)%)%,%
%SOURCES,%(%else-then(%SOURCES%,%(%toupper(%Sources%)%)%)%)%,%
%sources,%(%else-then(%_Sources%,%(%tolower(%Sources%)%)%)%)%,%
%%(%
%%include(%Filepath%/Makefile-file.t)%%
%#
# target
#
%Target%_%OUT%TARGET = %Target%%then-if(%else(%equal(EXE,%OUT%)%,%(${LIBEXT})%)%,.)%

########################################################################

%parse(%USER%,;,,,,%(#
# User %tolower(%USER%)%
#
%Target%_USR%USER% += \
${%Framework%_USR%USER%}

)%,USER)%%
%########################################################################

%parse(%SOURCES%,;,,,,%(#
# .%tolower(%C%)% sources
#
#%Target%_%OUT%_%C%_SOURCES += \
#${%FRAMEWORK%_SRC}/%Framework%/base/Base.%tolower(%C%)%

)%,C)%%
%########################################################################

#
# %Out% depends
#
#%Target%_%OUT%DEP += \
#${PKG}/${BLD]/libsomelib \
#
%Target%_%OUT%DEP += \

#
# %Out% depend dirs
#
#%Target%_%OUT%DEP_DIRS += \
#../libsomelib
#
%Target%_%OUT%DEP_DIRS += \

########################################################################

%else(%equal(LIB,%OUT%)%,%(#
# %Out% libraries
#
%Target%_LIBS += \
%Framework_LIBS%
)%)%
%
%)%)%

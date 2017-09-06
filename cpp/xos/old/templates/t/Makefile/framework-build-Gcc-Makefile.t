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
%#   File: framework-build-Gcc-Makefile.t
%#
%# Author: $author$
%#   Date: 7/15/2017
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
%framework,%(%else-then(%framework%,%(Framework)%)%)%,%
%Framework,%(%else-then(%Framework%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%target,%(%else-then(%target%,%(%Framework%)%)%)%,%
%Target,%(%else-then(%Target%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%os,%(%else-then(%os%,%(Os)%)%)%,%
%Os,%(%else-then(%Os%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%extension,%(%else-then(%extension%,%(%fileextension(%file%)%)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%file,%(%else-then(%file%,%(Makefile)%)%)%,%
%File,%(%else-then(%File%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%title,%(%else-then(%title%,%(build Gcc Makefile for %Framework%)%)%)%,%
%Title,%(%else-then(%Title%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%build,%(%else-then(%build%,%(build_)%)%)%,%
%Build,%(%else-then(%Build%,%(%build%)%)%)%,%
%BUILD,%(%else-then(%BUILD%,%(%toupper(%Build%)%)%)%)%,%
%build,%(%else-then(%_Build%,%(%tolower(%Build%)%)%)%)%,%
%framework_USRDEFINES,%(%else-then(%framework_USRDEFINES%,%(%
%%parse(%Depends%,;,,,,%(%parse(%Depends%,%(,)%,,,,%(%
%${%Build%%Depends%_USRDEFINES} \
%
%)%,Depends)%)%,Depends)%%
%)%)%)%,%
%Framework_USRDEFINES,%(%else-then(%Framework_USRDEFINES%,%(%framework_USRDEFINES%)%)%)%,%
%FRAMEWORK_USRDEFINES,%(%else-then(%FRAMEWORK_USRDEFINES%,%(%toupper(%Framework_USRDEFINES%)%)%)%)%,%
%framework_USRDEFINES,%(%else-then(%_Framework_USRDEFINES%,%(%tolower(%Framework_USRDEFINES%)%)%)%)%,%
%framework_USRINCLUDES,%(%else-then(%framework_USRINCLUDES%,%(%
%%parse(%Depends%,;,,,,%(%parse(%Depends%,%(,)%,,,,%(%
%${%Build%%Depends%_USRINCLUDES} \
%
%)%,Depends)%)%,Depends)%%
%)%)%)%,%
%Framework_USRINCLUDES,%(%else-then(%Framework_USRINCLUDES%,%(%framework_USRINCLUDES%)%)%)%,%
%FRAMEWORK_USRINCLUDES,%(%else-then(%FRAMEWORK_USRINCLUDES%,%(%toupper(%Framework_USRINCLUDES%)%)%)%)%,%
%framework_USRINCLUDES,%(%else-then(%_Framework_USRINCLUDES%,%(%tolower(%Framework_USRINCLUDES%)%)%)%)%,%
%framework_USRCXXFLAGS,%(%else-then(%framework_USRCXXFLAGS%,%(%
%%parse(%Depends%,;,,,,%(%parse(%Depends%,%(,)%,,,,%(%
%${%Build%%Depends%_USRCXXFLAGS} \
%
%)%,Depends)%)%,Depends)%%
%)%)%)%,%
%Framework_USRCXXFLAGS,%(%else-then(%Framework_USRCXXFLAGS%,%(%framework_USRCXXFLAGS%)%)%)%,%
%FRAMEWORK_USRCXXFLAGS,%(%else-then(%FRAMEWORK_USRCXXFLAGS%,%(%toupper(%Framework_USRCXXFLAGS%)%)%)%)%,%
%framework_USRCXXFLAGS,%(%else-then(%_Framework_USRCXXFLAGS%,%(%tolower(%Framework_USRCXXFLAGS%)%)%)%)%,%
%framework_USRLIBDIRS,%(%else-then(%framework_USRLIBDIRS%,%(%
%%parse(%Depends%,;,,,,%(%parse(%Depends%,%(,)%,,,,%(%
%${%Build%%Depends%_USRLIBDIRS} \
%
%)%,Depends)%)%,Depends)%%
%)%)%)%,%
%Framework_USRLIBDIRS,%(%else-then(%Framework_USRLIBDIRS%,%(%framework_USRLIBDIRS%)%)%)%,%
%FRAMEWORK_USRLIBDIRS,%(%else-then(%FRAMEWORK_USRLIBDIRS%,%(%toupper(%Framework_USRLIBDIRS%)%)%)%)%,%
%framework_USRLIBDIRS,%(%else-then(%_Framework_USRLIBDIRS%,%(%tolower(%Framework_USRLIBDIRS%)%)%)%)%,%
%framework_LIBS,%(%else-then(%framework_LIBS%,%(%
%%parse(%Depends%,;,,,,%(%parse(%Depends%,%(,)%,,,,%(%
%${%Build%%Depends%_LIBS} \
%
%)%,Depends)%)%,Depends)%%
%)%)%)%,%
%Framework_LIBS,%(%else-then(%Framework_LIBS%,%(%framework_LIBS%)%)%)%,%
%FRAMEWORK_LIBS,%(%else-then(%FRAMEWORK_LIBS%,%(%toupper(%Framework_LIBS%)%)%)%)%,%
%framework_LIBS,%(%else-then(%_Framework_LIBS%,%(%tolower(%Framework_LIBS%)%)%)%)%,%
%%(%
%%include(%filepath%/Makefile-file.t)%%
%%include(%filepath%/framework-build-Gcc-Makefile-depends.t)%%
%%include(%filepath%/framework-Gcc-Makefile.t)%%
%)%)%
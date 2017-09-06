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
%#   File: framework-generic-Gcc-Makefile-depends.t
%#
%# Author: $author$
%#   Date: 7/16/2017
%########################################################################
%with(%
%pkg,%(%else-then(%pkg%,%(..)%)%)%,%
%Pkg,%(%else-then(%Pkg%,%(%pkg%)%)%)%,%
%PKG,%(%else-then(%PKG%,%(%toupper(%Pkg%)%)%)%)%,%
%pkg,%(%else-then(%_Pkg%,%(%tolower(%Pkg%)%)%)%)%,%
%%(%
%%parse(%Depends%,;,,,,%(%parse(%Depends%,%(,)%,,,,%(%
%%with(%
%DEPENDS,%(%else-then(,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(,%(%tolower(%Depends%)%)%)%)%,%
%depends_usrincludes,%(%else-then(%depends_usrincludes%,%(-I{%DEPENDS%_SRC} \)%)%)%,%
%Depends_USRINCLUDES,%(%else-then(%Depends_USRINCLUDES%,%(%depends_usrincludes%)%)%)%,%
%DEPENDS_USRINCLUDES,%(%else-then(%DEPENDS_USRINCLUDES%,%(%toupper(%Depends_USRINCLUDES%)%)%)%)%,%
%depends_usrincludes,%(%else-then(%_Depends_USRINCLUDES%,%(%tolower(%Depends_USRINCLUDES%)%)%)%)%,%
%depends_usrlibdirs,%(%else-then(%depends_usrlibdirs%,%(-L{%DEPENDS%_LIB} \)%)%)%,%
%Depends_USRLIBDIRS,%(%else-then(%Depends_USRLIBDIRS%,%(%depends_usrlibdirs%)%)%)%,%
%DEPENDS_USRLIBDIRS,%(%else-then(%DEPENDS_USRLIBDIRS%,%(%toupper(%Depends_USRLIBDIRS%)%)%)%)%,%
%depends_usrlibdirs,%(%else-then(%_Depends_USRLIBDIRS%,%(%tolower(%Depends_USRLIBDIRS%)%)%)%)%,%
%depends_libs,%(%else-then(%depends_libs%,%(-l%Depends% \)%)%)%,%
%Depends_LIBS,%(%else-then(%Depends_LIBS%,%(%depends_libs%)%)%)%,%
%DEPENDS_LIBS,%(%else-then(%DEPENDS_LIBS%,%(%toupper(%Depends_LIBS%)%)%)%)%,%
%depends_libs,%(%else-then(%_Depends_LIBS%,%(%tolower(%Depends_LIBS%)%)%)%)%,%
%%(%
%########################################################################
# %Depends%
%DEPENDS%_PKG = ${%FRAMEWORK%_PKG}/%Pkg%/%Depends%
%DEPENDS%_SRC = ${%DEPENDS%_PKG}/%Src%
%DEPENDS%_BLD = ${%DEPENDS%_PKG}/%Bld%
%DEPENDS%_LIB = ${%DEPENDS%_BLD}/%Lib%
%DEPENDS%_BIN = ${%DEPENDS%_BLD}/%Bin%

%Build%%Depends%_USRDEFINES += \
%Depends_USRDEFINES%

%Build%%Depends%_USRINCLUDES += \
%Depends_USRINCLUDES%

%Build%%Depends%_USRCXXFLAGS += \
%Depends_USRCXXFLAGS%

%Build%%Depends%_USRLIBDIRS += \
%Depends_USRLIBDIRS%

%Build%%Depends%_LIBS += \
%Depends_LIBS%

%
%)%)%%
%)%,Depends)%)%,Depends)%%
%)%)%
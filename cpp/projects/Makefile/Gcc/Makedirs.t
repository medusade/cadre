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
#   File: Makedirs
#
# Author: $author$
#   Date: 7/21/2017
#
# Gcc Makefile for subdirs
########################################################################
all:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir" ; \
		(cd $$dir && make) || (echo "Make $$dir Failed") ; \
	done

install:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir install" ; \
		(cd $$dir && make install) || (echo "Make $$dir install Failed") ; \
	done

clean:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir clean" ; \
		(cd $$dir && make clean) || (echo "Make $$dir clean Failed") ; \
	done

again:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir again" ; \
		(cd $$dir && make again) || (echo "Make $$dir again Failed") ; \
	done

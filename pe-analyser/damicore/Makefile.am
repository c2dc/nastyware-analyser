##   Makefile.am - Main Automake script for autohello
##
##   Copyright (c) 2021 - Monaco F. J. <monaco@usp.br>
##
##   This file is part of DAMICORE3.
##
##   DAMICORE3 is free software: you can redistribute it and/or modify
##   it under the terms of the GNU General Public License as published by
##   the Free Software Foundation, either version 3 of the License, or
##   (at your option) any later version.
##
##   This program is distributed in the hope that it will be useful,
##   but WITHOUT ANY WARRANTY; without even the implied warranty of
##   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##   GNU General Public License for more details.
##
##   You should have received a copy of the GNU General Public License
##   along with this program.  If not, see <http://www.gnu.org/licenses/>.

SUBDIRS = third script doc src
ACLOCAL_AMFLAGS = -I m4

clean-local:
	rm -f bin/* lib/*

EXTRA_DIST = third/@PHYLIP_DIR@ third/community third/ncd third/@FIGTREE_DIR@ 

BUILD_NAME = $(PACKAGE_TARNAME)-$(PACKAGE_VERSION)+build-@BUILD_ID@
BUILD_CONTENTS = bin lib

EXTRA_BINDIST_FILES = README AUTHORS COPYING #doc/DAMICORE.md

bindist: all
	rm -rf $(BUILD_NAME)
	$(MAKE) DESTDIR=$$(pwd)/$(BUILD_NAME) install prefix="" 
	$(INSTALL) $(EXTRA_BINDIST_FILES) $(BUILD_NAME)
	tar zcvf $(BUILD_NAME).tgz $(BUILD_NAME)

third/@PHYLIP_DIR@ third/ncd third/@FIGTREE_DIR@ :
	cd third && $(MAKE) $(@F)

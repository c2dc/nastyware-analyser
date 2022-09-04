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



# These are the programs implementing DAMICORE toolchain.

binaries = ncd/src/ncd community/community community/community-conv @FIGTREE_DIR@/lib/figtree.jar @PHYLIP_DIR@/src/neighbor

# Install third part binaries and inlcude them in the distribution

dist_bin_SCRIPTS = $(binaries)

# NCD is provided as a git submodule from official repository

ncd/src/ncd: ncd/src
	cd $(top_srcdir)/third/ncd && ./configure && make 

ncd/src:
	git submodule update --init ncd

# Phylip source is downloaded as a tarball from the official repository

@PHYLIP_DIR@/src/neighbor: $(PHYLIP_DIR)
	cd $(top_srcdir)/third/@PHYLIP_DIR@/src && make -f Makefile.unx neighbor 

@PHYLIP_DIR@: 
	if ! test -f @PHYLIP_DIR@; then\
	  $(WEB_GET) http://evolution.gs.washington.edu/phylip/download/phylip-3.697.tar.gz;\
	  tar zxvf @PHYLIP@;\
	fi

# Figtree downloaed as release tarball from the official repository

$(FIGTREE_DIR)/lib/figtree.jar: @FIGTREE_DIR@

$(FIGTREE_DIR):
	if ! test -f @FIGTREE_DIR@; then\
	  $(WEB_GET) https://github.com/rambaut/figtree/releases/download/v1.4.4/$(FIGTREE);\
	  tar zxvf @FIGTREE@;\
	fi

# Fast newman implementation is included

community/community community/community-conv :
	cd $(top_srcdir)/third/community && make $(@F) 

# Local dist cleaning

dist-clean-local:
	chmod -R u+w $(top_srcdir)/third/ncd && cd $(top_srcdir)/third/ncd && if [ -f Makefile ] ; then make clean; fi
	chmod u+w -R $(top_srcdir)/third/@PHYLIP_DIR@ && cd $(top_srcdir)/third/@PHYLIP_DIR@/src && make -f Makefile.unx clean
	chmod u+w -R $(top_srcdir)/third/community && cd $(top_srcdir)/third/community && make clean
#	rm -rf $(top_srcdir)/third/@FIGTREE@
#	rm -rf $(top_srcdir)/third/@PHYLIP@

# Local cleaning

clean-local: 	dist-clean-local
	rm -rf @FIGTREE@ @FIGTREE_DIR@
	rm -rf @PHYLIP@ @PHYLIP_DIR@




##   Makefile.am - Main Automake script for autohello
##
##   Copyright (c) 2021 - Monaco F. J. <monaco@usp.br>
##
##   This file is part of DAMICORE Bundle.
##
##   DAMICORE Bundle is free software: you can redistribute it and/or modify
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

LDADD = 
AM_CPPFLAGS = -Wall 

bin_PROGRAMS = lineshuffle csv-colfiles csv-sort csv-format csv-lineswap csv-average csv-rowmajor

dftool = dftool.c dftool.h 

csv_colfiles_SOURCES = csv-colfiles.c debug.h 

lineshuffle_SOURCES = lineshuffle.c debug.h $(dftool) 

csv_sort_SOURCES = csv-sort.c debug.h $(dftool)

csv_format_SOURCES = csv-format.c debug.h $(dftool)

csv_lineswap_SOURCES = csv-lineswap.c debug.h $(dftool)
csv_lineswap_LDADD = -lm

csv_average_SOURCES = csv-average.c debug.h $(dftool)

csv_rowmajor_SOURCES = csv-rowmajor.c debug.h $(dftool)

bin_SCRIPTS = safename.sh


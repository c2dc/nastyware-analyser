#!/bin/sh
#
#   safename.sh - Ensure filenames are safe for damicore.
#
#   Copyright (c) 2021 - Monaco F. J. <monaco@usp.br>
#
#   This file is part of DAMICORE Bundle.
#
#   DMICORE Bundle is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.

##  Rationales
##  
##  Current DAMICORE implementation has troubles with fancy file names.
##  In particular, file names should not contain blanks or parentheses.
##  This program rename all files in a directory which do not comply
##  with those restrictions.
##
##  Warning, pathological naming schemes other than those mentioned are
##  not checked for. If in doubt (or if damicore freezes for no known
##  reason), rename your data files with pure alphanumeric ASCII
##  characters (no blanks, no symbols, no diacritics etc.)
##
##  This script is temporary workaround while some damicore implementation
##  issues are not resolved --- hopefully in a near future. 


USAGE="

Usage: safename.sh [options] <directory>\n\n
Options:\n\n
-h	this help message\n
"

if test -z "$1"; then
    echo $USAGE
    exit 1
fi

SED=$(which sed)

if ! test -f "$SED"; then
    echo "Error: program 'sed' not found!"
    echo "(This is rather unusual in a Linux or other POSIX-oriented environment, though..."
    exit 1
fi


dir="$1"

if ! test -d $dir; then
    echo "Directory $dir not found"
    exit 1
fi

# Check all files in $dir.

for i in $dir/*; do
    
    echo -n "Checking $i... \t\t"

    # Compute new name

    newname=$( echo "$i" | $SED -e 's/[ ]/_/g' -e 's/(/-/g' -e 's/)/-/g')

    # If need change
    
    if ! test "$newname" = "$i"; then

	# Make sure newname is unique

	while test -f $newname; do
	    newname="$newname"
	done

	echo "renaming to $newname"

	mv "$i" "$newname"

    else
	echo ""
    fi
    
    
done




dnl    configure.ac - Autoconf script 
dnl    
dnl    Copyright (c) 2021 - Monaco F. J. <monaco@usp.br>
dnl
dnl    This file is part of DAMICORE3
dnl
dnl    DAMICORE3 is free software: you can redistribute it and/or modify
dnl    it under the terms of the GNU General Public License as published by
dnl    the Free Software Foundation, either version 3 of the License, or
dnl    (at your option) any later version.
dnl
dnl    This program is distributed in the hope that it will be useful,
dnl    but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl    GNU General Public License for more details.
dnl
dnl    You should have received a copy of the GNU General Public License
dnl    along with .  If not, see <http://www.gnu.org/licenses/>.
dnl

dnl Initialize Autoconf, Automake and Libtool

AC_INIT([DAMICORE Bundle], [0.1.1], [monaco@usp.br],[damicore]) 
AC_PREREQ([2.65])                              
AC_CONFIG_AUX_DIR([build-aux])                 
AC_CONFIG_MACRO_DIR([m4])                      
AC_CONFIG_HEADERS([config.h])                  

AM_INIT_AUTOMAKE([-Wall 1.14.1 subdir-objects])	dnl Init Automake options


dnl Define language and tools

AC_PROG_CC 		        dnl Defines CC

AC_PROG_MKDIR_P
AC_PROG_LN_S
AC_PROG_INSTALL

dnl
dnl Check for libraries.
dnl

m4_define([build_notes],[$1 not found in your system.

 Please install $1 and re-run this script;
 e.g. in Ubuntu GNU/Linux: apt install $2
 ])

dnl Check for libgsl

dnl AC_CHECK_LIB([m],[cos])
dnl AC_CHECK_LIB([gslcblas],[cblas_dgemm],,AC_ERROR([ERROR: build_notes(Lib gsl, libgsl-dev)]))
dnl AC_CHECK_LIB([gsl],[gsl_blas_dgemm])

dnl Some libraries or programs are required by third-party components.
dnl While those may check for dependencies at build-time, we nevertheless
dnl anticipate the test here to provide user with detailed guidance.

dnl AC_CHECK_LIB([bz2],[BZ2_bzCompress],,AC_MSG_ERROR([ERROR: build_notes(bzlib, libbz2-dev)]))

AC_CHECK_PROGS([WEB_GET],[wget],,,)
AS_IF([test "$WEB_GET"],,[AC_MSG_ERROR([ERROR: build_notes(wget, wget)])])


dnl Define variables to be used by Automake

AC_SUBST([CPP_FLAGS],"-ansi -D_POSIX_C_SOURCE=200809L -Wall -Wextra")
AC_SUBST([C_FLAGS])
AC_SUBST([LD_FLAGS])
AC_SUBST([BUILD_ID],[1])

dnl Canonical check for POSIX threads.

AX_PTHREAD([AC_DEFINE([HAVE_PTHREAD],1,
            [Define to 1 if POSIX threads libraries and headers are found.]) ], 
	    AC_MSG_ERROR([POSIX threads support not detected.]))

AC_SUBST([PHYLIP],[phylip-3.697.tar.gz])
AC_SUBST([PHYLIP_DIR], [phylip-3.697] )
AC_SUBST([FIGTREE],[FigTree_v1.4.4.tgz])
AC_SUBST([FIGTREE_DIR],[FigTree_v1.4.4])


dnl Output files

AC_CONFIG_FILES([
		 Makefile
		 third/Makefile
		 script/Makefile
		 doc/Makefile
		 src/Makefile
		])

dnl Do it

AC_OUTPUT


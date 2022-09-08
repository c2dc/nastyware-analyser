
 DAMICORE Bundle manual
 ==============================

 Copyright (c) 2021 Monaco F. J. <monaco@usp.br>

 DAMICORE Bundle is free open source software distributed under the terms
 of the GNU General Public License vr.3, as stated in the companion file
 COPYING, as well as online at https://www.gnu.org/licenses/gpl-3.0.txt.

 Build
 ------------------------------

 If you have obtained this piece of software from its official version-control
 repository [2],

 If you have obtained the project source from the __version control repository__,

 i.e. you've cloned the project from its official Git repository, execute the script 

 ```
 $ ./bootsrap.sh
 ```

 to boostrap the build configuration script `configure`. To that end, you'll 
 need to have GNU Build System (Autotools) installed. In Debian/Ubuntu based 
 platforms,  you may install required software with

```
$ sudo apt install automake autoconf
```

 On the other hand, if you have obtained the software form a __distribution 
 repository__, usually as a tarball, you should already have the  script
 `configure` and therefore may skip the previous step.

 Either way, locate the file in the root of source directory and execute it

```
 $ ./configure
```

 This script shall perform a series of tests to collect data about the build 
 platform. If it complains about missing pieces of software, install them 
 as needed and rerun `configure`.

 Finally, build the software with

```
 $ make
 
```

 Install
 ------------------------------

 To install damicore toolchain under the path <path-to-damicore>:

```
 $ ./configure --prefix=<path-to-damicore>
 $ make install
```

 For instance, to install the software under /tm/foo

```
 $ ./configure --prefix=/tmp/foo
 $ make install
```

 This should install damicore in the directory `/tmp/foo/bin`.

 Pack a source distribution
 ------------------------------

 To create a source distribution:

```
 $ make dist
```

 This should create a tarball containing all the files required
 to build DAMICORE Bundle. A souce distribution does not require
 Autotools to be present in the buid plataform -- contrary from
 the version-control distribution.

 Pack a binary distribution
 ------------------------------

 To create a binary distribution:

```
  $ make bindist
```

 This should created a tarball containing the precompiled binary
 files and scripts necessary to run DAMICORE. This is a standalone
 self-contained distribution will all necessary files included.
 
 Just decompress the tarball where you want to files to reside.
 
 Execute damicore
 ------------------------------
 
 Suppose you have installed damicore through one of the aforementioned
 methods in directory `<damicore-path>`. If you have your data files 
 in directory `<data-path>`
 
 You may create a directory, say, `<result-path>`, and proceed as follows
 
 ```
	$ cd <result-path>
	$ <damicore-path>/bin/damicore <data-path>
```	
 
 This should populate <result-path> with the output files produced
 by damicore and, optionally, open the graphical tree visualization.
 
 Other auxiliary programs
 ------------------------------
 
 Under `<damicore-path>/bin` you should find other auxiliary programs
 for data file preprocessing, statistical analysis etc.
 
 * lineshuffle   
 
   program reads an input text file and produces a number of output files 
   consisting of unique permutations of the lines of the input file. 
   This program may be useful to produce permutations of a CSV data file.
				 
 * csv-colfiles  
 
   program reads a data file in CSV format and creates one file for each
   column in the input file. The name of each file is the column title.
   Each output file is comma-separate list of the values present in the
   respective column. This program may be useful to populate the
   data directory with files corresponding the columns of a a CSV data file.
   
 * csv-sort
 
   program reads a data file in CSV format and outputs another file with
   lines sorted according to one of the columns of the input file.
   
   (The implementation of csv-sort is not complete as of this alpha release).
   
   


 


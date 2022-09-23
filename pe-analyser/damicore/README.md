  DAMICORE Bundle
  ======================================================================

  Copyright (c) 2021 Monaco F. J. <monaco@usp.br>

  DAMICORE Bundle is free open source software distributed under the terms
  of the GNU General Public License vr.3, as stated in the companion file
  COPYING, as well as online at https://www.gnu.org/licenses/gpl-3.0.txt.

  Overview
  ------------------------------

  DAMICORE Bundle is a software packaging tool for building self-contained
  distributions of DAMICORE toolchain encompassing all the items required
  to build and execute a C-based DAMICORE implementation on a GNU/Linux
  platform, with no need of installing extra libraries and programs manually.
  
  DAMICORE, Originally described in [1], is an unsupervised machine learning 
  method combining techniques from information theory, phylogenetics and 
  Complex Networks.

  DAMICORE Bundle official repository: http://gitlab.com/monaco/damicore.

  Quick start
  ------------------------------

  DAMICORE Bundle uses several pieces of software from varying sources.

  During installation, the build scripts automatically download those
  items from their online repositories, when applicable, and compile
  all the necessary programs.

  After this step is complete, DAMICORE Bundle may be used to create

  a) a standalone binary distribution;

  b) a self-contained source distribution which already contains all
     external components and tools necessary to create a binary
     distribution.

```
   ------------------        ------------------        -----------------
  |                  |      |                  |      |                 |
  | DAMICORE Bundle  | ---> |    Source dist.  | ---> |   Binary dist.  |
  |                  |      |                  |      |                 |
   ------------------        ------------------        -----------------
           |                                                  ^
           |                                                  |
           ----------------------------------------------------

```
  For build and install instructions, please refer to file doc/DAMICORE.md.

  Acknowledgment and attribution
  ------------------------------

  DAMICORE method was developed by Dr. Alexandre C. B. Delbem [3], whose advice
  shall be duly emphatically acknowledged by this author. Dr. Rene de Souza Pinto [4]
  has also remarkably contributed to DAMICORE implementation.

  DAMICORE Bundle is distributed along with other pieces of software whose
  authors are duly attributed in file AUTHORS.


REFERENCES

 [1] Sanches, Adriano, Joao MP Cardoso, and Alexandre CB Delbem. "Identifying
     merge-beneficial software kernels for hardware implementation." 
     Reconfigurable Computing and FPGAs (ReConFig), 2011 International	
     Conference on. IEEE, 2011.

 [2] Monaco F. J., Damicore Bundle https://gitlab.com/monaco/damicore

 [3] Delbem A. C. B., <acbd@icmc.usp.br>

 [4] Pinto, R. S., <renesp@gmail.com> 


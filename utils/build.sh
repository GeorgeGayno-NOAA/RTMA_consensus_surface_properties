#!/bin/bash

#---------------------------------------------------------------------------------
# BUILD UTILITY PROGRAMS.  Invoke this script with no arguments.
#---------------------------------------------------------------------------------

DIR_ROOT=$PWD

mac=$(hostname -f)

if [ ! -d ./exec ] ;then
  mkdir ./exec
fi

rm -fr ./build
mkdir ./build && cd ./build

#---------------------------------------------------------------------------------
# BUILD ON WCOSS2
#---------------------------------------------------------------------------------

module reset
module use $DIR_ROOT/modulefiles
module load build.wcoss2.intel
module list

cmake .. -DCMAKE_INSTALL_PREFIX=../

make -j 1 VERBOSE=1

make install

exit

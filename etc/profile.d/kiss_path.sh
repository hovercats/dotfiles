export REPOS_DIR='/home/wololo/repositories'                                   
export KISS_PATH=''                                              
export KISS_HOOK=/home/wololo/repositories/kiss-hook
export KISS_FORCE=1
export KISS_DEBUG=1
#export KISS_TMPDIR=/tmp
export KISS_SU=ssu
export KISS_GET=curl
export KISS_COLOR=1
#export KISS_ROOT=/home/wololo/binbuilding

#export CFLAGS="-O2 -pipe -march=native -mtune=native" 
#export CFLAGS="-ONUM" 
export CFLAGS="-O2 -pipe -march=znver1 -mtune=znver1 -g -Wall -ftree-loop-vectorize -momit-leaf-frame-pointer -fexceptions -fasynchronous-unwind-tables -D_FORTIFY_SOURCE=2 -fstack-protector-all -fstack-clash-protection --param ssp-buffer-size=4"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j6"

# kiss-dumpsterfire
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-dumpsterfire/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-dumpsterfire/wayland

# kiss-somethingsomthingstatic
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-somethingsomethingstatic/core
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-somethingsomethingstatic/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-somethingsomethingstatic/wayland

# kiss repo
KISS_PATH=$KISS_PATH:$REPOS_DIR/repo/core                         
KISS_PATH=$KISS_PATH:$REPOS_DIR/repo/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/repo/wayland

# kiss community
KISS_PATH=$KISS_PATH:$REPOS_DIR/community/community

# kiss-dumpsterfire
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-dumpsterfire/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-dumpsterfire/wayland

# kiss-community graveyard
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-graveyard/community

KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-xorg/community
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-xorg/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-xorg/xorg



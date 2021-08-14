export REPOS_DIR='/home/wololo/repositories'                                   
export KISS_PATH=''                                              
export KISS_HOOK=/home/wololo/repositories/kiss-hook
export KISS_FORCE=1
export KISS_DEBUG=1
#export KISS_TMPDIR=/tmp
export KISS_SU=ssu
export KISS_GET=curl
export KISS_COLOR=1
#export KISS_ROOT=/home/wololo/fuckit

#export CFLAGS="-O2 -pipe -march=znver1 -D_FORTIFY_SOURCE=2 -fPIE -Wl, -pie -fPIC -fno-asynchronous-unwind-tables -g  -Wall -fstack-clash-protection" 
#export CFLAGS="-ONUM" 
export CFLAGS="-O2 -pipe -march=znver1"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j6"
export C="Clang"
export CXX="c++"

# personal dumpster-fire repo
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-dumpsterfire/xorg
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-dumpsterfire/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-dumpsterfire/core

# xorg
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-xorg/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-xorg/xorg
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-xorg/community

# kiss repo
KISS_PATH=$KISS_PATH:$REPOS_DIR/repo/core                         

#wyverkiss
KISS_PATH=$KISS_PATH:$REPOS_DIR/wyverkiss/core
KISS_PATH=$KISS_PATH:$REPOS_DIR/wyverkiss/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/wyverkiss/gnu

#kiss-llvm
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-llvm/


#Official repos
KISS_PATH=$KISS_PATH:$REPOS_DIR/repo/extra                        

#Community 
KISS_PATH=$KISS_PATH:$REPOS_DIR/community/community

# kiss-community graveyard
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-graveyard/community

#KISS-me 
KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-me/core
KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-me/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-me/gpl
KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-me/wayland

#kiss-kde
#KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-kde/testing
#KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-kde/extra
#KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-kde/kde
#KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-kde/frameworks
#KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-kde/plasma

#Kiss-games repo
#KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-games/equipment
#KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-games/games
#KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-games/libretro
#KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-games/testing

# Kiss-static
#KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-static/core
#KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-static/extra
#KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-static/bin
#KISS_PATH=$KISS_PATH:$REPOS_DIR/KISS-static/wayland
#KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-lang/languages


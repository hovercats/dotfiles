#                    __ _ _     
#      _ __ _ _ ___ / _(_) |___ 
#    _| '_ \ '_/ _ \  _| | / -_)
#   (_) .__/_| \___/_| |_|_\___|
#     |_|                       


# exports for X and wayland
export XDG_DATA_HOME=/home/wololo/.config
export XDG_CONFIG_HOME=/home/wololo/.config
mkdir -p /tmp/$(id -u)
export XDG_RUNTIME_DIR=/tmp/$(id -u)
chown wololo:wololo /tmp/$(id -u)


## kiss exports
export REPOS_DIR='/home/wololo/repositories'                                   
export KISS_PATH=''                                              
export KISS_HOOK=/home/wololo/repositories/kiss-hook
export KISS_FORCE=1
export KISS_DEBUG=1
export KISS_SU=ssu
export KISS_GET=curl
export KISS_COLOR=1
export KISS_TMPDIR=/tmp
export KISS_COMPRESS=xz
#export KISS_ROOT=/home/wololo/build


### build flags
export LDFLAGS="-s"
export CFLAGS="-O2 -pipe -march=znver1 -mtune=znver1 -w"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j9"

### Alternative flags
# if everythings is borked and fails to build.
# alternativly empty out LD/C(XX)FLAGS 
#export CFLAGS="-ONUM" 

# Security flags. May or may not hurt performance.
# -ftree-loop-vectorize -momit-leaf-frame-pointer -fasynchronous-unwind-tables -D_FORTIFY_SOURCE=1

# Heavier security flags. Will most likely hurt performance.
# -D_FORTIFY_SOURCE=2 -fstack-protector-all -fstack-clash-protection --param ssp-buffer-size=4"

# warning/debuging flags
# -Wall -g


### Repositories

# kiss-dumpsterfire
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-dumpsterfire/extra
#KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-dumpsterfire/wayland
#KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-dumpsterfire/xorg

# kiss-xorg
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-xorg/xorg
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-xorg/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-xorg/community

# kiss repo
KISS_PATH=$KISS_PATH:$REPOS_DIR/repo/core                         
KISS_PATH=$KISS_PATH:$REPOS_DIR/repo/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/repo/wayland

# kiss community
KISS_PATH=$KISS_PATH:$REPOS_DIR/community/community

# kiss-community graveyard
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-graveyard/community

# kiss-somethingsomthingstatic
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-somethingsomethingstatic/core
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-somethingsomethingstatic/extra
KISS_PATH=$KISS_PATH:$REPOS_DIR/kiss-somethingsomethingstatic/wayland

export XDG_DATA_HOME=/home/wololo/.config
export XDG_CONFIG_HOME=/home/wololo/.config
#export XKB_DEFAULT_LAYOUT=no
#export XKB_DEFAULT_VARIANT=qwerty
#export XKB_DEFAULT_OPTION=
export XDG_RUNTIME_DIR=/tmp/$(id -u)
chown wololo:wololo /tmp/$(id -u)

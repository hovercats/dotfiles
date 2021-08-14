# Add local 'pip' to PATH:
# (In your .bashrc, .zshrc etc)
export PATH="${PATH}:${HOME}/.local/bin/"

# TTY colors
source ~/.ttycolors.sh

fpath+=$HOME/git/typewritten
autoload -U promptinit; promptinit
prompt typewritten

# aliases
alias 'rdeps'="kiss revdepends"
alias 'deps'='kiss de' 
#alias 'poweroff'='ssu kill -s USR1 1' 	#shinit/sinit
#alias 'reboot'='ssu kill -s INT 1'	#shinit/sinit
alias 'poweroff'='ssu poweroff'		#busybox
alias 'reboot'='ssu reboot' 		#busybox
alias 'sv'='ssu sv'
alias 'am'='alsamixer'
alias 'resize'='mogrify -resize'
alias 'batt'='cat /sys/class/power_supply/BAT1/capacity && cat /sys/class/power_supply/BAT1/status'

setopt autocd # automaticly cd into typed directory
stty stop undef		# Disable ctrl-s to freeze terminal
stty stop undef		# Disable ctrl-s to freeze terminal

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*:*:*:*:globbed-files' matcher 'r:|?=** m:{a-z\-}={A-Z\_}'
zstyle ':completion:*:*:*:*:local-directories' matcher 'r:|?=** m:{a-z\-}={A-Z\_}'
zstyle ':completion:*:*:*:*:directories' matcher 'r:|?=** m:{a-z\-}={A-Z\_}'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
 function zle-keymap-select {
 if [[ ${KEYMAP} == vicmd  ]] ||
      [[ $1 = 'block'  ]]; then
      echo -ne '\e[1 q'
      elif [[ ${KEYMAP} == main  ]] ||
			[[ ${KEYMAP} == viins  ]] ||
			[[ ${KEYMAP} = ''  ]] ||
			[[ $1 = 'beam'  ]]; then
		echo -ne '\e[4 q'
fi
}
zle -N zle-keymap-select
zle-line-init() {
	zle -K viins # initiate `vi insert` as keymap
# (can be removed if `bindkey -V` has been set
# elsewhere)
echo -ne "\e[4 q"
}
zle -N zle-line-init
echo -ne '\e[4 q' # Use underline shape cursor on startup.
preexec() { echo -ne '\e[4 q' ;} # Use underline shape cursor for each new prompt.

# Cursor styles
# 0 -> blinking block
# 1 -> blinking block (default)
# 2 -> steady block
# 3 -> blinking underline
# 4 -> steady underline 
# 5 -> blinking bar, xterm
# 6 -> steady bar, xterm
# example: '\e[foo q' as used above


# edit line in vim buffer
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
tmp="$(mktemp)"
lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp"  ]; then
		dir="$(cat "$tmp")"
		rm -f "$tmp"
		[ -d "$dir"  ] && [ "$dir" != "$(pwd)"  ] &&
			cd "$dir"
	fi
}
bindkey -s '^o' 'lfcd\n'

### Plugins
# Syntax highlighting
source ~/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

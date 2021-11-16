# Add local 'pip' to PATH:
# (In your .bashrc, .zshrc etc)
export PATH="${PATH}:${HOME}/.local/bin/"

. ~/.profile

# add colors even in TTY
source ~/.ttycolors.sh

# typewritten prompt
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
alias 'resize'='mogrify -resize' # imagemagick command
alias 'batt'='cat /sys/class/power_supply/BAT1/capacity && cat /sys/class/power_supply/BAT1/status'

# some other usefull stuff (man zshoptions for more options)
setopt autocd # automaticly cd into typed directory
setopt interactive_comments # add comments even in interactive shells
unsetopt BEEP # disable beeping.
zle_highlight=( 'paste:none' ) # dont highlight pasted stuff
stty stop undef		# Disable ctrl-s to freeze terminal

## these dont seem to work as Id expect, so Ill use zstyle part instead
#setopt menu_complete # menu completion, selecting with tab-key
#setopt no_list_ambiguous # an extension of the above setopt
#setopt globdots # match files that begins with a . without specifying it
#setopt auto_list # automatically list choices on ambiguous completion
#unsetopt case_glob # make globbing case-insensitive. 

# Basic tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*:*:*:*:globbed-files' matcher 'r:|?=** m:{a-zA-Z\-}={A-Za-z\_}'
zstyle ':completion:*:*:*:*:local-directories' matcher 'r:|?=** m:{a-zA-Z\-}={A-Za-z\_}'
zstyle ':completion:*:*:*:*:directories' matcher 'r:|?=** m:{a-zA-Z\-}={A-Za-z\_}'
zmodload zsh/complist
compinit 
_comp_options+=(globdots)		# Include hidden files.

# autojump 
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':chpwd:*' recent-dirs-default yes
zstyle ':completions:' recent-dirs-insert always


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
# (can be removed if `bindkey -V` has been set elsewhere)
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
# autopairs. i.e. "" () [] 
source ~/zsh/zsh-autopair/autopair.zsh

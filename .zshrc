#              _              
#      _______| |__  _ __ ___ 
#     |_  / __| '_ \| '__/ __|
#    _ / /\__ \ | | | | | (__ 
#   (_)___|___/_| |_|_|  \___|

# Add local 'pip' to PATH:
# (In your .bashrc, .zshrc etc)
export PATH="${PATH}:${HOME}/.local/bin/"

# source .profile, so I dont have to
. ~/.profile

# typewritten prompt
fpath+=$HOME/git/typewritten
autoload -U promptinit; promptinit
prompt typewritten


# aliases
alias 'rdeps'="kiss revdepends"
alias 'deps'='kiss de' 
alias 'poweroff'='ssu poweroff'		#busybox
alias 'reboot'='ssu reboot' 		#busybox
#alias 'poweroff'='ssu kill -s USR1 1' # sinit/shinit
#alias 'reboot'='ssu kill -s INT 1' # sinit/shinit
alias 'svc'='ssu svc'
alias 'velox'='swc-launch velox'
alias 'batt'='cat /sys/class/power_supply/BAT1/capacity && cat /sys/class/power_supply/BAT1/status'

# some other usefull stuff (man zshoptions for more options)
setopt autocd # automaticly cd into typed directory
unsetopt BEEP # disable beeping.
zle_highlight=( 'paste:none' ) # dont highlight pasted stuff
stty stop undef		# Disable ctrl-s to freeze terminal

# Basic tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*:*:*:*:globbed-files' matcher 'r:|?=** m:{a-zA-Z\-}={A-Za-z\_}'
zstyle ':completion:*:*:*:*:local-directories' matcher 'r:|?=** m:{a-zA-Z\-}={A-Za-z\_}'
zstyle ':completion:*:*:*:*:directories' matcher 'r:|?=** m:{a-zA-Z\-}={A-Za-z\_}'
zmodload zsh/complist
compinit 
_comp_options+=(globdots)		# Include hidden files.

# autojump with 'cdr'
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
# example: '\e[foo q' as shown above

# edit line in a vi buffer
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

### Plugins
# Syntax highlighting
source ~/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
# autopairs. i.e. "" () [] 
source ~/zsh/zsh-autopair/autopair.zsh

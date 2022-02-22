``` ascii
___      _    __ _ _        
|   \ ___| |_ / _(_) |___ ___
| |) / _ \  _|  _| | / -_|_-<
|___/\___/\__|_| |_|_\___/__/
                             
```
Just a repo with my dotfiles and configs

Some notes:

* zshrc
	* has Vi mode enabled
	* `ctrl + v` to go into vi buffer
	* tab completion
		* works with hidden files aswell
		* tab completion is case-insensitive
			* so you can type all-caps, and tab complete to correct file/dir
			* and vice versa
	* syntax highlighting
	* use builtin autojump feature
			* type cdr <tab> to see previously used dirs
			* its labeled in numbers, so you may use that instead
	* autopairing "" () etc, like in vim
	* typewritten prompt
* vimrc
	* just some minor settings
	* vimplug plugin manager
	* auto pair plugin. pairs brackets and more automatically
	* *more* syntax highlighting and more with vim-polyglot

#### Sources/References
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
* [zsh-autopair](https://github.com/hlissner/zsh-autopair)
* [lf filemanager](https://github.com/gokcehan/lf)
* [typewritten prompt](https://github.com/reobin/typewritten)
* [vimplug](https://github.com/junegunn/vim-plug)
* [vim autoapair plugin](https://github.com/jiangmiao/auto-pairs)
* [vim-polyglot](https://github.com/sheerun/vim-polyglot)

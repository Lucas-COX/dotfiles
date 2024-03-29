# dotfiles
Here are my i3 / zsh / vim configuration files. 

## :file_folder: Needs
To fully use the zsh and vim configuration files, you will need the following
packages :
```shell
bat
exa
fzf
nvm
pyenv
tpm
vim-plug
```

If you want to use pyenv make sure that the following are installed :
```shell
sudo apt install libssl-dev libbz2-dev libreadline-dev libsqlite3-dev libffi-dev liblzma-dev
```

## :warning: Warns
You may have to manually run the following command in vim or neovim for
installing the markdown-preview package :
```vim
:call mkdp#util#install()
```
Make sure that you have `cmake` installed before installing `YouCompleteMe`,
else you will have to compile it by yourself.

## :bulb: Tips

### :shell: Tmux
As this is a terminal centered configuration, it goes very well with tools such
as `tmux`. Here is a [cheatsheet](/TMUX.md) with the basic commands needed for anyone who
doesn't know tmux. [thoughtbot](https://thoughtbot.com/upcase/tmux) gives you a
complete understanding of what is `tmux` and how to use it.

### :smirk: More to come
Do not hesitate to open an issue if you know some other tools that could fit
well with this configuration !

## :loudspeaker: Shoutout
Most of the i3 files are or are based on the [EndeavourOS](https://endeavouros.com) configuration files.\
Make sure to check their work if it's not already done, it is one of the best
linux distros I've tried.


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Update oh my zsh without asking
zstyle ':omz:update' mode auto

if [[ $TERM_PROGRAM != tmux ]] then
    plugins=(
        colored-man-pages
        fzf
        git
        python
        gh
        mysql-colorize
        nvm
        z
        zsh-autosuggestions
        zsh-syntax-highlighting
    )
else
    plugins=(
        colored-man-pages
        fzf
        git
        python
        gh
        mysql-colorize
        nvm
        z
        zsh-syntax-highlighting
    )
fi

source $ZSH/oh-my-zsh.sh


# User Configuration

# Environment
export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --follow --glob "!.git/*"'
export FZF_DEFAULT_OPTS="--preview 'batcat --style=numbers --color=always --line-range :500 {}'"
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Use lazy mode for nvm plugin
zstyle ':omz:plugins:nvm' lazy yes

# Configure 1password SSH forwarding
export SSH_AUTH_SOCK=$HOME/.ssh/agent.sock
ALREADY_RUNNING=$(ps -auxww | grep -q "[n]piperelay.exe -ei -s //./pipe/openssh-ssh-agent"; echo $?)
if [[ $ALREADY_RUNNING != "0" ]]; then
    if [[ -S $SSH_AUTH_SOCK ]]; then
        rm $SSH_AUTH_SOCK
    fi
    (setsid socat UNIX-LISTEN:$SSH_AUTH_SOCK,fork EXEC:"npiperelay.exe -ei -s //./pipe/openssh-ssh-agent",nofork &) >/dev/null 2>&1
fi

# Pyenv start
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv init --path)"

# Aliases
alias ls="exa --group-directories-first --icons"
alias vim=nvim
alias mq="sudo /etc/init.d/mysql start"
alias bat="batcat"
alias fp="fzf --preview 'batcat --style=numbers --color=always --line-range :500 {}'"

# Starship prompt
eval "$(starship init zsh)"

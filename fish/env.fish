# Environment variables go here
set -gx NVM_DIR "$HOME/.nvm"
set -gx PYENV_ROOT $HOME/.pyenv
set -gx BROWSER /usr/bin/vivaldi
set -gx SONAR_SCANNER_HOME /opt/sonar-scanner
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden --smart-case --follow --glob "!.git/*"'
set -gx FZF_DEFAULT_OPTS "--preview 'bat --style=numbers --color=always --line-range :500 {}'"

# Path addings go here
fish_add_path /lib/docker/cli-plugins
fish_add_path $PYENV_ROOT/bin
fish_add_path /usr/local/go/bin
fish_add_path $SONAR_SCANNER_HOME/bin

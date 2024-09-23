if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx fish_greeting ''
    set -gx EDITOR vim

    # Load environment
    . ~/.config/fish/env.fish

    # Load aliases
    . ~/.config/fish/aliases.fish

    # Load pyenv
    pyenv init - | source

    # Load prompt
    starship init fish | source

    # Neofetch
    neofetch
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/lucas/.ghcup/bin $PATH # ghcup-env

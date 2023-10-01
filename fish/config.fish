if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx fish_greeting ''
    set -gx EDITOR vim

    # Load environment
    . ~/.config/fish/env.fish

    # Load aliases
    . ~/.config/fish/aliases.fish 
    starship init fish | source
end

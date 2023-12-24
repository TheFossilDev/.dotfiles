if status is-interactive
    # Commands to run in interactive sessions can go here
end
# [ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish
starship init fish | source
set PATH $PATH ~/.cargo/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set editor to nvim
set -gx EDITOR nvim

#init starship
starship init fish | source

#add abbreviations
source $HOME/.config/fish/conf.d/abbr.fish

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/anaconda/bin/conda
    eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/anaconda/etc/fish/conf.d/conda.fish"
        . "/opt/anaconda/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/anaconda/bin" $PATH
    end
end
# <<< conda initialize <<<


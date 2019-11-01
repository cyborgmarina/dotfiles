export EDITOR=vi
alias vi=v
alias vim=vi
set -o vi


# Specific stuff for my laptop
[ -f ~/.alcipir.bash ] && source ~/.alcipir.bash

# Loads Fuzzy Finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

function prompt
{
    local dir="`pwd`"
    local homeDir="\/home\/$USER"
    dir=${dir/$HOME/'~'}

    echo $dir | sed -r "s/~/$homeDir/g"
}

export PS1='`prompt`> '

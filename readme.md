# Long ago, in a $HOME directory mounted several servers away . . .

On OSX it works best with the latest ZSH (4.3.X).  You can get it via the following instructions:

    # brew
    brew update && brew install zsh
    $EDITOR /etc/shells and add /usr/local/bin/zsh
    chsh -s /usr/local/bin/zsh

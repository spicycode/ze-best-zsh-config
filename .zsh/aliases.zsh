alias update_macports='sudo port selfupdate && port outdated'
alias ocaml='rlwrap ocaml'

# Override macports ssh in case it gets pulled in as a dependency
alias ssh='/usr/bin/ssh'

# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'

# Same as above, but in long listing format
alias ll='ls -GFhl'

alias rmate='mate Capfile Rakefile README app bin config doc db lib public script spec test stories features examples'
alias ri='ri -Tf ansi'
alias ss='./script/server'
alias sc='./script/console'
alias sg='./script/generate'
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='mvim -p'
alias gvim='mvim -p'
alias mysql='mysql -u root'
alias mysqladmin='mysqladmin -u root'
alias e='aquamacs'
alias cycle_passenger='touch tmp/restart.txt'
alias behold='~/.gem/ruby/1.8/bin/beholder'

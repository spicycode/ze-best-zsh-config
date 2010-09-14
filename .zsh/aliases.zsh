alias update_macports='sudo port selfupdate && port outdated'
alias ocaml='rlwrap ocaml'

# Override macports ssh in case it gets pulled in as a dependency
alias ssh='/usr/bin/ssh'

# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'

# Same as above, but in long listing format
alias ll='ls -GFhl'

alias rmate='mate Gemfile Capfile Rakefile README README.md app bin config doc db lib public script spec test stories features examples'
alias ri='ri -Tf ansi'


alias gvim='mvim -p'
alias mysql='mysql -u root'
alias mysqladmin='mysqladmin -u root'
alias e='aquamacs'
alias emacs='aquamacs'
alias cycle_passenger='touch tmp/restart.txt'
alias be='bundle exec'

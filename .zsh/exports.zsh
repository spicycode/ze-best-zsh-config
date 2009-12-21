# Currently this path is appendend to dynamically when picking a ruby version
export PATH=~/.bin:/usr/local/bin:~/src/opensource/euca2ools-1.1/bin:$PATH

# Our list of directories we can cd to from anywhere
export CDPATH=.:~/src/opensource:~/src/relevance:~/src/spicycode

# Set default console Java to 1.6
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

# Setup terminal, and turn on colors
export TERM=xterm-color
export CLICOLOR=1

# Enable color in grep
export GREP_OPTIONS='--color=auto' 
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --quit-if-one-screen --raw-control-chars'
export PAGER='less'

# Set macvim with flag to wait for console (git commit compat) as our EDITOR
# and then refocus on iTerm
# export EDITOR='mvim -f -c "au VimLeave * !open -a iTerm"'
export EDITOR='mvim -f'
# export EDITOR='mate -w'

# Make activemq happy
export ACTIVEMQ_HOME=~/src/relevance/activemq/
export ACTIVEMQ_BASE=~/src/relevance/activemq/
export ACTIVEMQ=~/src/relevance/activemq/bin/macosx/activemq

# Point to clojure for VimClojure
export CLOJURE_EXT=~/src/clojure/jars

# Currently this path is appendend to dynamically when picking a ruby version
export PATH=~/.bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:$PATH

# Our list of directories we can cd to from anywhere
export CDPATH=.:~/src/

# Set default console Java to 1.6
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

# Setup terminal, and turn on colors
export TERM=xterm-color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='mvim -f'

export NODE_PATH=/usr/local/lib/node
export PYTHONPATH=/usr/local/lib/python2.6/site-packages

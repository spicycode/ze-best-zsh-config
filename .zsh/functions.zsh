function zsh_recompile {
  autoload -U zrecompile

  [[ -f ~/.zshrc ]] && zrecompile -p ~/.zshrc
  [[ -f ~/.zshrc.zwc.old ]] && rm -f ~/.zshrc.zwc.old

  for f in ~/.zsh/**/*.zsh; do
    [[ -f $f ]] && zrecompile -p $f
    [[ -f $f.zwc.old ]] && rm -f $f.zwc.old
  done

  [[ -f ~/.zcompdump ]] && zrecompile -p ~/.zcompdump
  [[ -f ~/.zcompdump.zwc.old ]] && rm -f ~/.zcompdump.zwc.old

  source ~/.zshrc
}

function update_textmate_bundles {
  for dir in ~/Library/Application\ Support/TextMate/Bundles/*.tmbundle; do
    cd $dir
    git pull
    svn up
    cd -
  done
}

function mysqlredo {
  mysqladmin drop $1
  mysqladmin create $1
}

function nginx_start { sudo nginx }

function nginx_stop { sudo kill $(cat /opt/nginx/logs/nginx.pid) }

# From http://tomafro.net/tags/zsh

# Usage is simple: tab <command> opens a new tab in Terminal, and runs the given command in the current working directory.
# For example tab script/server would open a new tab and run script/server.
function tab {
  osascript 2>/dev/null <<EOF
    tell application "System Events"
      tell process "Terminal" to keystroke "t" using command down
    end
    tell application "Terminal"
      activate
      do script with command "cd $PWD; $*" in window 1
    end tell
EOF
}

function extract {
  echo Extracting $1 ...
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xjf $1  ;;
          *.tar.gz)    tar xzf $1  ;;
          *.bz2)       bunzip2 $1  ;;
          *.rar)       rar x $1    ;;
          *.gz)        gunzip $1   ;;
          *.tar)       tar xf $1   ;;
          *.tbz2)      tar xjf $1  ;;
          *.tgz)       tar xzf $1  ;;
          *.zip)       unzip $1   ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1  ;;
          *)        echo "'$1' cannot be extracted via extract()" ;;
      esac
  else
      echo "'$1' is not a valid file"
  fi
}

function pg_start {
  /usr/local/bin/pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
}

function pg_stop {
  /usr/local/bin/pg_ctl -D /usr/local/var/postgres stop -s -m fast
}

function mysql_start {
  /usr/local/Cellar/mysql/5.1.41/share/mysql/mysql.server start
}

function mysql_stop {
  /usr/local/Cellar/mysql/5.1.41/share/mysql/mysql.server stop
}

function mongodb_start {
  mongod run --config /usr/local/Cellar/mongodb/1.2.3-x86_64/mongod.conf
}

function mount_work {
  /Applications/TrueCrypt.app/Contents/MacOS/TrueCrypt -t -k "" --protect-hidden=no ~/Documents/work ~/src/relevance
}

function mount_passwords {
  /Applications/TrueCrypt.app/Contents/MacOS/TrueCrypt -t -k "" --protect-hidden=no ~/src/relevance/relevance_it/passwords2.tc
}

function ss {
  if [ -e "./script/server" ]; then
    ./script/server
  fi
  
  if [ -e "./script/rails" ]; then
    ./script/rails server
  fi
}

function sc {
  if [ -e "./script/console" ]; then
    ./script/console
  fi

  if [ -e "./script/rails" ]; then
    ./script/rails console
  fi
}

function precmd {
  # The following 9 lines of code comes directly from Phil!'s ZSH prompt
  # http://aperiodic.net/phil/prompt/
  local TERMWIDTH
  (( TERMWIDTH = ${COLUMNS} - 1 ))

  local PROMPTSIZE=${#${(%):--- %D{%R.%S %a %b %d %Y}\! }}
  local PWDSIZE=${#${(%):-%~}}

  if [[ "$PROMPTSIZE + $PWDSIZE" -gt $TERMWIDTH ]]; then
    (( PR_PWDLEN = $TERMWIDTH - $PROMPTSIZE ))
  fi

  # Put the string "hostname::/full/directory/path" in the title bar:
	echo -ne "\e]2;$PWD\a"

  # Put the parentdir/currentdir in the tab
	echo -ne "\e]1;$PWD:h:t/$PWD:t\a"

}

function set_running_app {
 printf "\e]1; $PWD:t:$(history $HISTCMD | cut -b7- ) \a"
}

function preexec {
  set_running_app
}

function postexec {
  set_running_app
}


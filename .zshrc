source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
if [[ -n ${EMACS} ]]; then
   # Nothing to do here yet
else
    source ~/.zsh/prompt.zsh
fi
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/zsh_hooks.zsh
# source ~/.zsh/ruby_installer.zsh
# source ~/.zsh/ruby_switcher.zsh

# rvm-install added line:
if [[ -s /Users/spicycode/.rvm/scripts/rvm ]] ; then source /Users/spicycode/.rvm/scripts/rvm ; fi

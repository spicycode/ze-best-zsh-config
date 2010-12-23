# Load vcs_info so precmd can utilize it
# autoload -Uz vcs_info

source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/zsh_hooks.zsh
source ~/.zsh/plugins/command_coloring.zsh

if [[ -s /Users/spicycode/.rvm/scripts/rvm ]] ; then source /Users/spicycode/.rvm/scripts/rvm ; fi

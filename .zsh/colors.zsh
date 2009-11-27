# let's load colors into our environment, then set them
autoload colors; colors

# The variables are wrapped in %{%}. This should be the case for every
# variable that does not contain space.
for COLOR in RED GREEN YELLOW BLUE WHITE BLACK; do
  eval PR_$COLOR='%{$fg_no_bold[${(L)COLOR}]%}'
  eval PR_BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done

export PR_RED PR_GREEN PR_YELLOW PR_BLUE PR_WHITE PR_BLACK
export PR_BOLD_RED PR_BOLD_GREEN PR_BOLD_YELLOW PR_BOLD_BLUE 
export PR_BOLD_WHITE PR_BOLD_BLACK

# Clear LSCOLORS
unset LSCOLORS

# Main change, you can see directories on a dark background
export LSCOLORS=gxfxcxdxbxegedabagacad

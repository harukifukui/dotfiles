typeset -U path PATH
path=(
  $XDG_BIN_HOME
  /opt/homebrew/opt/bison/bin
  $path
)

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

if [[ -r "$ZDOTDIR/.zprofile.local" ]]; then
  source "$ZDOTDIR/.zprofile.local"
fi

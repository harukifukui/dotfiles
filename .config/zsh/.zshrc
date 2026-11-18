# https://github.com/romkatv/powerlevel10k#how-do-i-configure-instant-prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE="$XDG_STATE_HOME/zsh/zsh_history"
[[ -d "${HISTFILE:h}" ]] || mkdir -p -- "${HISTFILE:h}"

# Update Oh My Zsh through Antidote.
zstyle ':omz:update' mode disabled

# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/eza
zstyle ':omz:plugins:eza' 'dirs-first' 'yes'
zstyle ':omz:plugins:eza' 'git-status' 'yes'
zstyle ':omz:plugins:eza' 'header' 'yes'
zstyle ':omz:plugins:eza' 'hyperlink' 'yes'
zstyle ':omz:plugins:eza' 'icons' 'yes'
zstyle ':omz:plugins:eza' 'show-group' 'yes'
zstyle ':omz:plugins:eza' 'time-style' 'long-iso'

# https://antidote.sh
ANTIDOTE_HOME="$XDG_CACHE_HOME/antidote"
fpath=(/opt/homebrew/opt/antidote/share/antidote/functions $fpath)
autoload -Uz antidote
antidote load "$ZDOTDIR/zsh_plugins.txt" "$XDG_CACHE_HOME/zsh/zsh_plugins.zsh"

alias lg='lazygit'
alias vi='nvim'
alias vim='nvim'
alias xn='"$XDG_DATA_HOME/xdg-ninja/xdg-ninja.sh" --skip-unsupported'

if [[ -r "$ZDOTDIR/.zshrc.local" ]]; then
  source "$ZDOTDIR/.zshrc.local"
fi

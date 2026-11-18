# https://specifications.freedesktop.org/basedir/latest/
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Local convention for user executables
export XDG_BIN_HOME="$HOME/.local/bin"

export EDITOR="nvim"

# Bundler
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle"
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME/bundle"
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME/bundle"

# Cargo
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# .NET CLI
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"

# npm
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"

# NuGet
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"

# Proton Pass SSH agent
export SSH_AUTH_SOCK="$HOME/.ssh/proton-pass-ssh-agent.sock"

# rustup
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# Zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

if [[ -r "$ZDOTDIR/.zshenv.local" ]]; then
  source "$ZDOTDIR/.zshenv.local"
fi

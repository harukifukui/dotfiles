# dotfiles

Personal dotfiles for Apple Silicon Macs running macOS 27 or later, managed
with [mise](https://mise.jdx.dev/).

## Setup

1. Install the Xcode Command Line Tools (`xcode-select --install`) if needed.
   If Homebrew is missing, run its installer.

   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. Load the Homebrew environment, install mise and GitHub CLI, and sign in to
   GitHub.

   ```sh
   eval "$(/opt/homebrew/bin/brew shellenv)"
   brew install mise gh
   gh auth login --hostname github.com
   ```

3. Sign in to the Mac App Store with an account that has acquired the apps
   listed as `mas:` packages in `mise.toml`. Clone the repository and apply
   the configuration.

   ```sh
   git clone https://github.com/harukifukui/dotfiles.git "$HOME/.dotfiles"
   mise trust "$HOME/.dotfiles/mise.toml"
   XDG_STATE_HOME="$HOME/.local/state" \
     MISE_GLOBAL_CONFIG_FILE="$HOME/.dotfiles/.config/mise/config.toml" \
     mise -C "$HOME/.dotfiles" bootstrap
   ```

4. Open a new terminal to load the Zsh configuration.

5. Sign in to Proton Pass, store your Git signing key in its vault, and
   [enable its SSH agent](https://proton.me/support/ssh-agent).

## Apply changes

```sh
mise -C "$HOME/.dotfiles" bootstrap
```

## Update

Run these commands from a Zsh session with the dotfiles loaded.

```zsh
brew upgrade --cask
mise plugins update
mise -C "$HOME/.dotfiles" bootstrap --upgrade
antidote update --bundles
```

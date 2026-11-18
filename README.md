# dotfiles

Personal dotfiles for Apple Silicon Macs running macOS 27 or later, managed
with [mise](https://mise.jdx.dev/).

## Setup

1. Install the Xcode Command Line Tools (`xcode-select --install`) and
   [Homebrew](https://brew.sh/) if needed.
2. Sign in to the Mac App Store with an account that has acquired the apps
   listed as `mas:` packages in [mise.toml](mise.toml).
3. Install mise and GitHub CLI, sign in to GitHub, and apply the configuration.

   ```sh
   eval "$(/opt/homebrew/bin/brew shellenv)"
   brew install mise gh
   gh auth login --hostname github.com --skip-ssh-key
   git clone https://github.com/harukifukui/dotfiles.git "$HOME/.dotfiles"
   mise trust "$HOME/.dotfiles/mise.toml"
   XDG_STATE_HOME="$HOME/.local/state" \
     MISE_GLOBAL_CONFIG_FILE="$HOME/.dotfiles/.config/mise/config.toml" \
     mise -C "$HOME/.dotfiles" bootstrap
   ```

4. Open Xcode, complete its first-launch setup, and accept the license if
   prompted. Open a new terminal to load the Zsh configuration.
5. Sign in to Proton Pass, [enable its SSH agent](https://proton.me/support/ssh-agent),
   and share your Git signing key with it.

## Apply changes

```sh
mise -C "$HOME/.dotfiles" bootstrap
```

## Update

Run these commands from a Zsh session with the dotfiles loaded.

```zsh
brew upgrade --cask
mise plugins update
mise -C "$HOME/.dotfiles" bootstrap repos update
mise -C "$HOME/.dotfiles" bootstrap --upgrade
antidote update --bundles
```

## Formatting

```sh
mise -C "$HOME/.dotfiles" exec -- dprint fmt
mise -C "$HOME/.dotfiles" exec -- dprint check
```

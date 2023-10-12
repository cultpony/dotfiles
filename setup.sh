#!/usr/bin/env sh

# Install ZSH and activate
sudo apt-get update -y
sudo apt-get install -y zsh
sudo chsh "$(id -un)" --shell "/usr/bin/zsh"

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Install Nix for convenience
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# ⚙️ Raj's Dotfiles

Welcome to my personal dotfiles repo — a clean, portable, and version-controlled setup for macOS using [GNU Stow](https://www.gnu.org/software/stow/) and a `bootstrap.sh` script to automate environment provisioning.

---

## 📦 What's Included

- 🎯 Clean `.gitconfig` setup with automatic identity switching (work/personal)
- 🔁 Managed via [GNU Stow](https://www.gnu.org/software/stow/) for symlinked dotfiles
- 🧠 `bootstrap.sh` to auto-install:
  - Homebrew + essential CLI tools
  - `nvm`, `node`, `pnpm`
  - GitHub CLI
  - VS Code + CLI access
- 🖥 Terminal-friendly configs for `zsh`, `.zshrc`, and aliases

---

## 🚀 Quick Setup

Clone and bootstrap your entire environment:

```bash
git clone https://github.com/rajrawat37/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x bootstrap.sh
./bootstrap.sh

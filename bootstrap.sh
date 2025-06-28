#!/bin/bash

echo "🔧 Raj's Dotfiles Setup Script"
echo "------------------------------"

# Step 1: Homebrew check
if ! command -v brew &>/dev/null; then
  echo "🧪 Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "✅ Homebrew is already installed."
fi

# Step 2: Install stow and essentials
echo ""
echo "📦 Installing stow, gh, pnpm..."
brew install stow gh pnpm

# Step 3: VS Code CLI check
echo ""
if ! command -v code &>/dev/null; then
  echo "⚠️  VS Code CLI 'code' not found."
  echo "👉 Open VS Code and run: Cmd+Shift+P → 'Shell Command: Install code in PATH'"
else
  echo "✅ VS Code CLI (code) is available."
fi

# Step 4: NVM and Node setup
echo ""
echo "🌿 Setting up NVM and Node.js..."

if [ ! -d "$HOME/.nvm" ]; then
  echo "📦 Installing NVM..."
  brew install nvm
  mkdir -p ~/.nvm
  echo '
# NVM Setup
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
' >> ~/dotfiles/zsh/.zshrc
  echo "✅ NVM config added to .zshrc"
fi

# Load NVM into current shell
export NVM_DIR="$HOME/.nvm"
source /opt/homebrew/opt/nvm/nvm.sh

# Install latest Node
echo "📦 Installing latest Node.js..."
nvm install node

# Step 5: Stow dotfiles
echo ""
echo "📁 Stowing your dotfiles..."

DOTFILES=("zsh" "git" "aliases")

for folder in "${DOTFILES[@]}"; do
  if [ -d "$folder" ]; then
    echo "🔗 Stowing $folder..."
    stow --adopt "$folder"
  else
    echo "❌ Folder '$folder' not found. Skipping."
  fi
done

# Step 6: Done
echo ""
echo "✅ All done, Raj! Reloading ZSH..."
exec zsh
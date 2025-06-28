# ==============================
# 🛣️ PATH SETUP (Load tools in order)
# ==============================
export PATH="/opt/homebrew/bin"
export PATH="$PATH:/opt/homebrew/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin"

# 🛠️ Console Ninja CLI
export PATH="$PATH:/Users/rajkumar.rawat/.console-ninja/.bin"

# 🟦 Node/NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH="$PATH:$NVM_DIR/versions/node/v20.13.1/bin"

# 🐳 MongoDB
export PATH="$PATH:/Users/rajkumar.rawat/mongodb-macos-aarch64-7.0.12/bin"

# 🐹 Go
export PATH="$PATH:$(go env GOPATH)/bin"

# 🧼 Remove duplicate PATH entries (Zsh magic ✨)
typeset -U path


# ⚡==============================
# ⚡ ZSH UI / PROMPT
# ⚡==============================

# 🚀 Powerlevel10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 🧙 Oh My Zsh Base Setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"

# 🔌 Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh

# 🖌️ Powerlevel10k Theme Config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# 🧪==============================
# 🧪 ENVIRONMENT VARIABLES
# 🧪==============================
# export LANG=en_US.UTF-8
# export EDITOR="code"

# 📦 Aliases (optional)
# alias zshconfig="code ~/.zshrc"
# alias reloadzsh="source ~/.zshrc"
# alias gs="git status"

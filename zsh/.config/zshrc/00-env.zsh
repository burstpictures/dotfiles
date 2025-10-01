# --- PATH ---
# # Homebrew
if command -v brew &> /dev/null; then
    eval "$($(brew --prefix)/bin/brew shellenv)"
fi
# Add personal scripts (only if not already in PATH)
case ":$PATH:" in
    *:"$HOME/.local/bin":*) ;;
    *) export PATH="$HOME/.local/bin:$PATH" ;;
esac

# --- Pager ---
export PAGER="less"
export LESS="-R"

# Environment defaults
umask 027
export EDITOR="nvim"
export VISUAL="nvim"

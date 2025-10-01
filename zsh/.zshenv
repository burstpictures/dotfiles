# --- ESSENTIAL SYSTEM ENVIRONMENT (Runs on every shell) ---

# 1. Homebrew (Linuxbrew) PATH injection
# Use the check for safety and portability:
if [ -x "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# 2. Local bin PATH: Add $HOME/.local/bin (where personal scripts live)
case ":$PATH:" in
  *:"$HOME/.local/bin":*) ;;
  *) export PATH="$HOME/.local/bin:$PATH" ;;
esac

# 3. Security/Permissions: Set umask to private/group-readable
umask 0027

# 4. Global Editors: Used by non-interactive tools (like Git)
export EDITOR="nvim"
export VISUAL="nvim"

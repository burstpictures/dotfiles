# --- PATH ---

 # Homebrew
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" 
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

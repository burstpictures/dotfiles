# --- Keybindings ---
bindkey -e   # emacs-style

# --- FZF Activation (Universal) ---

# Check if fzf command is available
if command -v fzf > /dev/null; then
    # Sources the necessary key-bindings and completion functions directly.
    # This works on nearly all systems (macOS, Debian, Fedora) that have FZF >= 0.48.0.
    source <(fzf --zsh)
fi

# --- FZF Command Overrides (Use 'fd' instead of 'find') ---

# Check for the existence of the faster 'fd' utility (installed as 'fdfind' on some systems)
# We will use 'fd' directly for cleaner configuration.
if command -v fd > /dev/null; then
    FZF_EXCLUDES="--hidden --exclude .git --exclude .cursor --exclude .cache --exclude .ssh"

    # Ctrl-T: Search files + directories (using fd)
    export FZF_CTRL_T_COMMAND="fd --type f --type d $FZF_EXCLUDES"

    # Alt-C: Search only directories (using fd)
    export FZF_ALT_C_COMMAND="fd --type d --hidden --follow --exclude .git"

    # Now that FZF is sourced, set your custom options:
    export FZF_CTRL_R_OPTS="--sort --exact --height=40% --border"
    export FZF_DEFAULT_OPTS="--height=40% --border"
else
    # Fallback to slower find command if fd/fdfind is not installed
    export FZF_CTRL_T_COMMAND="find . -path '*/\.*' -prune -o -type f -print -o -type d -print | sed 's@^\./@@' | cut -b3-"
fi

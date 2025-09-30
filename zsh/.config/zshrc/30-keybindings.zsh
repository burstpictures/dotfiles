# --- Keybindings ---
bindkey -e   # emacs-style

# --- fzf integration ---

# Exclude noisy dirs when searching
FZF_EXCLUDES="--exclude .git --exclude .cursor --exclude .cursor-server --exclude .cache --exclude .ssh"

# Ctrl-T → search files + dirs
export FZF_CTRL_T_COMMAND="fdfind --hidden --type f --type d $FZF_EXCLUDES"

# Alt-C → search only dirs
export FZF_ALT_C_COMMAND="fdfind --hidden --type d $FZF_EXCLUDES"

# Ctrl-R → search history (fzf-enhanced)
export FZF_CTRL_R_OPTS="--sort --exact --height=40% --border"

# Global default options (no preview)
export FZF_DEFAULT_OPTS="--height=40% --border"

# Enable FZF keybindings
if [ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

# Enable FZF completion
if [ -f /usr/share/doc/fzf/examples/completion.zsh ]; then
  source /usr/share/doc/fzf/examples/completion.zsh
fi

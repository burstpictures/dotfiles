# Load modular configs if present
if [ -d "$HOME/.config/zshrc" ]; then
  for f in "$HOME"/.config/zshrc/*.zsh; do
    [ -r "$f" ] && source "$f"
  done
fi

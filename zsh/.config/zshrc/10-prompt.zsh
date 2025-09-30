# --- Prompt ---
#autoload -Uz promptinit && promptinit
# Ohhh Myyy Poshhh :-)
if command -v oh-my-posh &>/dev/null; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/omp/themes/1_shell.omp.json)"
fi

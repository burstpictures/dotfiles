# --- Aliases ---
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias sucp="sudo cp -i"
alias sumv="sudo mv -i"
alias surm="sudo rm -i"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# lsd replaces ls, but fallback to ls if not installed
if command -v lsd >/dev/null 2>&1; then
  alias ls="lsd --icon=always"
  alias ll="lsd -l --icon=always"
  alias la="lsd -lah --icon=always"
  alias suls="sudo lsd --icon=always"
  alias sull="sudo lsd -l --icon=always"
  alias sula="sudo lsd -lah --icon=always"
else
  alias ll="ls -l"
  alias la="ls -lah"
  alias sull="sudo ls -l"
  alias sula="sudo ls -lah"
fi

# batcat as bat
if command -v batcat >/dev/null 2>&1; then
  alias bat="batcat"
  alias subat="sudo batcat"
elif command -v bat >/dev/null 2>&1; then
  alias bat="bat"
  alias subat="sudo bat"
fi

# lazygit as lzg
if command -v lazygit >/dev/null 2>&1; then
  alias lzg="lazygit"
fi

# lazydocker as lzd
if command -v lazydocker >/dev/null 2>&1; then
  alias lzd="lazydocker"
fi

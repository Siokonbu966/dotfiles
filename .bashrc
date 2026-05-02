# 色定義
GREEN="\[\e[32m\]"
BLUE="\[\e[1;34m\]"
WHITE="\[\e[37m\]"
YELLOW="\[\e[33m\]"
CYAN="\[\e[36m\]"
RESET="\[\e[0m\]"

# git branch取得（git-prompt.shを読み込む）
if [ -f /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh ]; then
  source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
fi

_git_bin="$(command -v git 2>/dev/null)"

if [ -n "$_git_bin" ]; then
  _git_prefix="$(cd "$(dirname "$_git_bin")/.." && pwd)"
  source $_git_prefix/share/bash-completion/completions/git-prompt.sh
fi

git_ps1_or_x() {
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    local out
    out=" $(__git_ps1 '(%s)')"
    if [ -n "$out" ]; then
      printf '%s' "$out"
    fi
  fi
}

# プロンプト
PS1="${WHITE}<\t>${GREEN}\u@\h${RESET}: ${CYAN} \w${RESET} ${BLUE}\$(git_ps1_or_x)${RESET}\n${WHITE}\$ ${RESET}"

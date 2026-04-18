# 色定義
GREEN="\[\e[32m\]"
BLUE="\[\e[34m\]"
WHITE="\[\e[37m\]"
YELLOW="\[\e[33m\]"
RESET="\[\e[0m\]"

# git branch取得（git-prompt.shを読み込む）
if [ -f /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh ]; then
  source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
fi

# プロンプト
PS1="${BLUE}<\t>${GREEN}\u@\h${RESET}: ${BLUE}\w${RESET} ${YELLOW}\$(__git_ps1 '(%s)')${RESET}\n${WHITE}\$ ${RESET}"

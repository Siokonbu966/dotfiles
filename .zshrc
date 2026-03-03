if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# p10k
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $ZSH/oh-my-zsh.sh

# env var
export GITHUB_USER=Siokonbu966
export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR=nvim

# alias
alias r='cd $(ghq root)/$(ghq list | fzf)'

# import local conf
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

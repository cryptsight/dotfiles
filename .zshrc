# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
PATH=$PATH:/home/cryptsight/bin:/home/cryptsight/.cargo/bin
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000
export EDITOR=nvim
bindkey -e
macchina -t Helium
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias l="lsd"
alias ll="lsd -a"
alias lll="lsd -al"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

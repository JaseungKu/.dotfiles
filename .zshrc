# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

############# Here comes custom part ###################

# custom alias
alias cl='clear'
alias ls='ls -XF --color=always --group-directories-first'
alias ld='ls -d */'
alias ll='ls -lh'
alias la='ls -a'
alias rm='rm -i'
alias tree='tree -C'
alias so='source'
alias vz='vim ~/.zshrc'
alias vv='vim ~/.vimrc'
#alias cat='ccat'

alias git-dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias gd='git-dotfiles'

alias gst='git status'
alias gco='git checkout'
alias gc='git commit'

alias spyder='export LD_PRELOAD=/usr/lib64/libstdc++.so.6 && spyder'

eval `dircolors ~/.dir_colors`

export PATH=$PATH:/home/jaseung/scripts/
export PATH=$PATH:/usr/local/xictools/bin
#:/home/jaseung/Documents/fasthenry-3.0wr-110915/fasthenry-3.0wr/bin:$PATH
export MYVIMRC='/home/jaseung/.vimrc'
export LIBGL_ALWAYS_SOFTWARE=1 
export PATH=$PATH:/home/jaseung/JoSIM/build/
export PATH=$PATH:/home/jaseung/JoSIM/scripts/
#DEFAULT_USER=`whoami` 

#neofetch

# zsh theme 
source ~/.zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# zsh plugins
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/zsh-colored-man-pages/colored-man-pages.plugin.zsh
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
#source ~/.zsh/plugins/auto-ls/auto-ls.plugin.zsh

# autojump
#. /usr/share/autojump/autojump.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jaseung/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
   eval "$__conda_setup"
else
    if [ -f "/home/jaseung/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jaseung/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jaseung/anaconda3/bin:$PATH"
    fi  
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate base  # use conda base as a default

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

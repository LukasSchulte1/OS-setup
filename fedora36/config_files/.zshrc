# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lukasschulte/.zshrc'

autoload -Uz compinit
compinit


#alias
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias nv='nvim'
alias difftool='git difftool --tool=vimdiff'

#Keybindings
bindkey    "^[[H"     beginning-of-line
bindkey    "^[[F"     end-of-line
bindkey    "^[[3~"    delete-char
bindkey    "^[[5~"    history-beginning-search-backward
bindkey    "^[[6~"    history-beginning-search-forward

#bindkey "^[[A" history-beginning-search-backward
#bindkey "^[[B" history-beginning-search-forward

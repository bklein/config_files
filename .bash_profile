
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.git-completion.bash
source ~/.git-prompt.sh

alias gco='git co'
alias gci='git ci'
alias gst='git st'
alias gad='git add'
alias be='bundle exec'

#alias spec='be rspec'

export PS1='\u:\w$(__git_ps1 " (%s)") \$ '

export PATH=/usr/local/sbin:/usr/local/bin:$PATH


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.git-completion.bash
source ~/.git-prompt.sh

alias gco='git co'
alias gci='git ci'
alias gst='git st'
alias be='bundle exec'

export PS1='\u:\w$(__git_ps1 " (%s)") \$ '

export PATH=/usr/local/bin:/Users/sparlock/.rvm/gems/ruby-1.9.3-p448/bin:/Users/sparlock/.rvm/gems/ruby-1.9.3-p448@global/bin:/Users/sparlock/.rvm/rubies/ruby-1.9.3-p448/bin:/Users/sparlock/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

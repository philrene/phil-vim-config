# Set git autocompletion and PS1 integration
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
	  . /usr/local/git/contrib/completion/git-completion.bash
  fi
  GIT_PS1_SHOWDIRTYSTATE=true

  if [ -f /opt/local/etc/bash_completion ]; then
	      . /opt/local/etc/bash_completion
  fi

  #PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
  PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[32m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

  _complete_ssh_hosts ()
  {
	  COMPREPLY=()
	  cur="${COMP_WORDS[COMP_CWORD]}"
	  comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
	  cut -f 1 -d ' ' | \
	  sed -e s/,.*//g | \
	  grep -v ^# | \
	  uniq | \
	  grep -v "\[" ;
	  cat ~/.ssh/config | \
	  grep "^Host " | \
	  awk '{print $2}'
	  `
	  COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
	  return 0
  }
  complete -F _complete_ssh_hosts ssh

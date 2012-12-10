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

  export CLICOLOR=1
  export LSCOLORS=Gxfxcxdxbxegedabagacad

  export NODE_PATH=/usr/local/lib/node_modules
  export PATH=$PATH:/Users/prene/Documents/Phil/ANDROID/android-sdk-macosx/tools
  export PATH=$PATH:/Users/prene/Documents/Phil/ANDROID/android-sdk-macosx/platform-tools
  export PATH=$PATH:/usr/local/Cellar/postgresql/9.1.3/bin/

  alias py='python'
  alias g='git'
  alias l='ls -a'

  export M2_HOME=/usr/local/apache-maven/apache-maven-3.0.4
  export M2=$M2_HOME/bin
  export PATH=$PATH:$M2
  export ANDROID_HOME=/Users/prene/Documents/Phil/ANDROID/android-sdk-macosx
  export JAVA_HOME=/Library/Java/Home/
  export PATH=$PATH:/usr/local/sbin

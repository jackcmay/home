PS1='[\h \W$(__git_ps1 " (%s)")]\$ '

export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:/Applications/Araxis\ Merge.app/Contents/Utilities
export PATH=$PATH:~/scripts:~/scripts/notes

export EDITOR="/usr/local/bin/code"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jack/google-cloud-sdk/path.bash.inc' ]; then source '/Users/jack/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jack/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/jack/google-cloud-sdk/completion.bash.inc'; fi

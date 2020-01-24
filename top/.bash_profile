# bunch of random paths ordered in reverse order of precedence
declare -a paths=(
~/.cargo/bin
/Applications/Araxis\ Merge.app/Contents/Utilities
~/scripts
~/scripts/notes
/usr/local/Cellar/python/3.7.3/bin
~/google-cloud-sdk/path.bash.inc
~/google-cloud-sdk/completion.bash.inc
/usr/local/Cellar/arm-none-eabi-gdb/8.2.1/bin
)

for i in "${paths[@]}"
do
   if [[ :${PATH}: =~ :${i}: ]]
   then
       #echo $i already in PATH
       :
   elif [[ -d ${i} ]]
   then
       # echo adding $i
       PATH=${i}:${PATH}
   fi
done

export EDITOR="/usr/local/bin/code"
export VISUAL=${EDITOR}
export PS1='[\h \W$(__git_ps1 " (%s)")]\$ '

HISTSIZE=10000
HISTFILESIZE=1000000000

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jack/google-cloud-sdk/path.bash.inc' ]; then . '/Users/jack/google-cloud-sdk/path.bash.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/jack/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/jack/google-cloud-sdk/completion.bash.inc'; fi

export PATH="$HOME/.cargo/bin:$PATH"

alias ls='ls -G'
alias ll='ls -lG'

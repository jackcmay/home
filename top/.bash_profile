# bunch of random paths ordered in reverse order of precedence
declare -a paths=(
~/.cargo/bin
/Applications/Araxis\ Merge.app/Contents/Utilities
~/scripts
~/scripts/notes
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
if [ -f '~/google-cloud-sdk/path.bash.inc' ]; then source '~/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.bash.inc' ]; then source '~/google-cloud-sdk/completion.bash.inc'; fi

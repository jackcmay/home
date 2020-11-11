# bunch of random paths ordered in reverse order of precedence
declare -a paths=(
~/.cargo/bin
~/.local/share/solana/install/active_release/bin
/Applications/Araxis\ Merge.app/Contents/Utilities
~/scripts
~/scripts/notes
/usr/local/Cellar/python@3.9/3.9.0/bin
~/google-cloud-sdk/path.bash.inc
~/google-cloud-sdk/completion.bash.inc
/usr/local/opt/binutils/bin
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
export PATH="$HOME/.cargo/bin:$PATH"

alias ls='ls -G'
alias ll='ls -lG'
alias tar='/usr/local/bin/gtar'

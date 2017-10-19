# Git branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[38;5;11m\]/\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Git branch completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

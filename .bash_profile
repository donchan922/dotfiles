if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
eval "$(rbenv init -)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# プロンプトにGitのブランチ名を表示する
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

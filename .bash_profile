if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# プロンプトにGitのブランチ名を表示する
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# ターミナル起動時にzsh切り替えの案内が表示されるのを無効化する
export BASH_SILENCE_DEPRECATION_WARNING=1
# Solarizedのlsテーマを読み込む
eval `gdircolors ~/.dircolors-solarized/dircolors.256dark`


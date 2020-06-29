alias l='ls -ltrSFh'
alias la='ls -ltrSFha'

alias b='cd ../'
alias bb='cd ../../'
alias bbb='cd ../../../'
alias bbbb='cd ../../../../'
alias bbbbb='cd ../../../../../'
alias rfish='source ~/.config/fish/config.fish'
alias rzsh='source ~/.zshrc'
alias a='alias'

# Vim
alias v='vi'
alias v.='vi .'
alias vfish='vi ~/.config/fish/config.fish'
alias vzsh='vi ~/.zshrc'

# Neovim
alias nvimfish='nvim ~/.config/fish/config.fish'
alias nvimzsh='nvim ~/.zshrc'
alias nviminit='nvim ~/.config/nvim/init.vim'
alias nvimtoml='nvim ~/.config/nvim/dein.toml'
alias nvimice='nvim ~/.config/nvim/colors/iceberg.vim'
alias nvim.='nvim .'

alias hi='history' 
alias hisg='history | grep '
alias p='pwd'

# Git
alias gs='git status'
alias gcm='git commit -m'
alias gb='git branch'
alias gba='git branch -a'
alias gbm='git branch -m'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gd='git diff'
alias ga='git add'
alias gl='git log'
alias glo='git log --oneline'
alias glog='git log --oneline --graph'
alias gloag='git log --oneline --all --graph'
alias glogs='git log --oneline --graph --stat'
alias gloags='git log --oneline --all --graph --stat'
# alias gc='git checkout' 
alias gre='git restore'
alias gsw='git switch'
alias gswc='git switch -c'

# peco
# C-rで履歴検索
function fish_user_key_bindings
    bind \cr peco_select_history
end

# ブランチ名表示
set -g theme_display_git_master_branch yes

# ディレクトリの省略させない
set -g fish_prompt_pwd_dir_length 1 

# 時刻を表示しないように設定
set -g theme_display_date no

set -g theme_powerline_fonts no

# set -g theme_nerd_fonts yes

# lsコマンド(実行結果)の色の変更
# export LSCOLORS=gxfxcxdxbxegedabagacad

# cdしたらls -ltrSFh
function cd
  builtin cd $argv[1]
  ls -ltrSFh
end

# Golang
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH /usr/local/go/bin

# Node.js
set -x PATH $PATH /.nodebrew/current/bin:$PATH

# Google App Engine
# set -x fish_user_paths $HOME/LocalLibrary/go_appengine/ $fish_user_paths

# set -x fish_user_paths $GOBIN $GOPATH

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/mimaken/Desktop/GCP/google-cloud-sdk/path.fish.inc' ]; . '/Users/mimaken/Desktop/GCP/google-cloud-sdk/path.fish.inc'; end


# GCP
# source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
source /Users/mimaken/Desktop/GCP/google-cloud-sdk/path.fish.inc

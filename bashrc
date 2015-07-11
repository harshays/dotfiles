colorflag="-G"

# List only directories
alias lsd='ls -l | grep "^d"'
# Always use color output for `ls`
alias l='ls'
alias ls="ls ${colorflag}"
# Show only dotfiles
alias lsh='ls -a | grep "^\."'

export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# open aliases
alias ipy='ipython qtconsole --ConsoleWidget.font_family="Consolas" --ConsoleWidget.font_size=13'
alias ipynb='ipython notebook'
alias py='python'
alias icpcchrome='/usr/bin/open -a "/Applications/Google Chrome.app" "http://codeforces.com" "http://bit.ly/1GTIP9Q"'
alias icpc='icpcchrome && subl ~/code/github/solutions/codeforces/cpp'
alias v='vim'

# navigation aliases
alias ..="cd .."
alias c='clear'
alias code='cd ~/code'
alias github='code && cd github'
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'

# build/run aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias activate='source venv/bin/activate'

# git aliases
alias gst='git status'
alias gcm='git commit'
alias gph='git push'
alias glg='git log --graph --pretty="%C(bold green)%h%Creset %C(yellow)%an%Creset%C(auto)%d%Creset %s"'
alias gdf='git diff'
alias gck='git checkout'
alias gbr='git branch'
alias gad='git add'
alias gsh='git show'
alias gmg='git merge --ff-only'
alias grb='git rebase'
alias gls='git ls-tree'

alias grep='grep --color=auto'
alias refresh='source ~/.bash_profile'
alias diff='colordiff'

# virtualenv setup
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
source /usr/local/bin/virtualenvwrapper.sh

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Add heroku toolbet
export PATH="/usr/local/heroku/bin:$PATH"

# Initialization for FDK command line tools
FDK_EXE="/Users/harshay/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/harshay/bin/FDK/Tools/osx"
export PATH
export FDK_EXE

# source autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# show and hide . files
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool True && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool False && killall Finder"

# make vim default
export EDITOR="vim"
export GIT_EDITOR="vim"

# cycle through suggestions with tab
bind TAB:menu-complete


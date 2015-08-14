#! usr/bin/sh

# cycle through suggestions with tab
bind TAB:menu-complete

# source paths, aliases and misc
source ~/.path.sh
source ~/.aliases.sh
source ~/.misc.sh
source /usr/local/bin/virtualenvwrapper.sh

# app aliases
eval "$(python ~/code/github/dotfiles/gen_aliases.py)"


# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

function backup {
    if [[ -d $1 ]]; then
        cp -r $1 ~/backupdir/$1
    elif [[ -f $1 ]]; then
        cp $1 ~/backupdir/$1
    fi
}

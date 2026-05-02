#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export _JAVA_AWT_WM_NONREPARENTING=1
export PATH=$PATH:$HOME/.local/bin/:$HOME/Vivado/2025.2/Vivado/bin/
# Increase history size to unlimited
export HISTSIZE=-1
export HISTFILESIZE=-1

export HISTCONTROL=ignoreboth  # Ignore duplicates
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"  # Immediately save history

shopt -s histappend  # Don't overwrite history when other terminals are active

if [ -f "$HOME/.config/user-dirs.dirs" ]; then
    . "$HOME/.config/user-dirs.dirs"
    # Export specific XDG variables for use in other scripts/apps
    export XDG_DESKTOP_DIR XDG_DOWNLOAD_DIR XDG_TEMPLATES_DIR \
           XDG_PUBLICSHARE_DIR XDG_DOCUMENTS_DIR XDG_MUSIC_DIR \
           XDG_PICTURES_DIR XDG_VIDEOS_DIR XDG_CONFIG_HOME \
           XDG_DATA_HOME XDG_STATE_HOME XDG_CACHE_HOME \
           XDG_BIN_HOME
fi

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    exec hyprland.sh
fi

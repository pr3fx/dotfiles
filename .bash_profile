#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export _JAVA_AWT_WM_NONREPARENTING=1
export PATH=$PATH:/home/operator/.local/bin/

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
	exec $HOME/scripts/hyprland.sh
fi

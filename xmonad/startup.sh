# ================================================== #
# Author: lzf - linzhifeng@wyselandlaw.com
# QQ : 58243981
# Last modified: 2018-04-24 17:37
# Filename: startup.sh
# Description: 
# ================================================== #
#!/bin/bash
fcitx &
volumeicon &
nm-applet &
keynav &
trayer --edge top --align right --width 5 --height 18 --transparent true &
~/wallpaper.sh

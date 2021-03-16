#! /usr/bin/bash
#find . /mnt -name lost+found -prune -o -type d | rofi -dmenu -i -sort | xargs -I {} nautilus '{}'
#fdfind '' . /mnt -t d -H | rofi -dmenu -i -sort | xargs -I {} nautilus '{}'
fdfind '' . /mnt/Workspace /mnt/Data -t d -H | rofi -dmenu -i -sort | xargs -I {} nautilus '{}'


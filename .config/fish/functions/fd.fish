function fd
    cd (fdfind . '/home/vietspaceanh' '/media/vietspaceanh/Workspace' -t d -t l -H | fzf +m | cat)
 end

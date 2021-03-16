function py

getopts $argv | while read -l key value
    switch $key
    case n name
        set name $value
    case p panes
        set panes $value
    end
end


if not [ $panes ]
    set panes 2
end

if [ -n $name ] && [ (count $argv) = 1 ]
    set name $argv
else
    set name python
end

if contains "Session.vim" *
    set VIM_COMMAND "vim -S"
else
    set VIM_COMMAND "vim main.py"
end


if not [ $CONDA_PREFIX ]
    echo -e '\e[31mPlease activate a conda environment first!'
else
    set CONDA_ENV $CONDA_DEFAULT_ENV

    if [ $panes = 2 ]
        tmux new-session -s $name \; \
        send-keys "act $CONDA_ENV" C-m \; \
        send-keys 'ipython' C-m \; \
        split-window -h \; \
            send-keys "act $CONDA_ENV" C-m \; \
            send-keys $VIM_COMMAND C-m \;

    else if [ $panes = 3 ]
        tmux new-session -s $name \; \
        send-keys "act $CONDA_ENV" C-m \; \
        send-keys 'ipython' C-m \; \
        split-window -h \; \
        split-window -v \; \
            send-keys "act $CONDA_ENV" C-m \; \
            send-keys -t right "act $CONDA_ENV" C-m \; \
            send-keys -t right $VIM_COMMAND C-m \;

    else
        echo -e "\e[31mUnsupported number of panes."
    end


end

end


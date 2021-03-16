function dj

getopts $argv | while read -l key value
    switch $key
    case n name
        set name $value
    end
end

if [ -n $name ] && [ (count $argv) = 1 ]
    set name $argv
else
    set name django
end

if contains "Session.vim" *
    set VIM_COMMAND "vim -S"
else
    set VIM_COMMAND "vim main.py"
end


if not [ $CONDA_PREFIX ]
	echo -e "\e[31mPlease activate a conda environment first!"
else
    set CONDA_ENV $CONDA_DEFAULT_ENV

	tmux new-session -s $name \; \
	send-keys "act $CONDA_ENV" C-m \; \
	send-keys $VIM_COMMAND C-m \; \
	split-window -v \; \
		send-keys "act $CONDA_ENV" C-m \; \
		send-keys "django livereload" C-m \; \
		split-window -h \; \
		send-keys "act $CONDA_ENV" C-m \; \
		send-keys "django r 0.0.0.0:8000" C-m \; \
		split-window -h \; \
		send-keys "act $CONDA_ENV" C-m \;
end


end


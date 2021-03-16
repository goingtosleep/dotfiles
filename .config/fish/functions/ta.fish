function ta
    tmux attach -t (string split : (tmux list-sessions | fzf +m | cat))[1]
end

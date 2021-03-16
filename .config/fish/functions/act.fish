 function act 
    eval /home/vietspaceanh/miniconda3/bin/conda "shell.fish" "hook" | source
    conda activate $argv
end

function ipy
    if [ $CONDA_PREFIX ]
        ipython
    else
        act && ipython $argv
    end
end

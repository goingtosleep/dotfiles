set fish_greeting
fish_vi_key_bindings

# tide
set --global tide_left_prompt_items pwd git prompt_char
set --global tide_right_prompt_items virtual_env cmd_duration

# fzf dracula
set -x FZF_DEFAULT_OPTS '--color=dark 
    --color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f 
    --color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7'

# ENV vars
set -x BROWSER 'vivaldi'
set PATH ~/bin $PATH
set PATH ~/.local/bin $PATH
set PATH ~/.yarn/bin $PATH
set PATH /opt/julia/bin $PATH


# aliases
alias vim 'nvim'

alias up 'sudo pkcon refresh && sudo pkcon update'
alias upg 'sudo pkcon update'
alias installed 'grep " install " /var/log/dpkg.log'
alias caps 'setxkbmap -option caps:swapescape'
alias nv 'nvidia-smi'

alias tl 'tmux list-sessions'
alias tksv 'tmux kill-server'
alias tkss 'tmux kill-session -t'

alias dact 'conda deactivate'

alias djsh 'django shell_plus'
alias djsa 'django sa'
alias djr 'django r'
alias djmm 'django mm && django m'


# abbreviations
abbr -a - 'cd -'
abbr -a conf 'cd ~/.config/fish/ && vim config.fish'
abbr -a e echo
abbr -a gc 'git clone'
abbr -a i ipy --pylab
abbr -a m math
abbr -a apt sudo apt
abbr -a ts 'tmux new -s'

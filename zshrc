# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jcm/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="mortalscumbag"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  ssh-agent
  colorize
  colored-man-pages
)

# Colorize with more colors
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256

# Set ssh-agent identities
zstyle :omz:plugins:ssh-agent identities github gardner_rsa

source $ZSH/oh-my-zsh.sh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# SSH agent add github key
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/github
# ssh-add ~/.ssh/gardner_rsa
# clear

# Aliases
alias plink="plink1.9"

# SSH into
alias cri_connect="ssh -Y jmcclellan@gardner.cri.uchicago.edu"
alias rcc_connect="ssh -Y jmcclellan@midway2.rcc.uchicago.edu"

# SSHFS
alias mount_cri="sshfs jmcclellan@gardner.cri.uchicago.edu:/gpfs/data /home/jcm/remote/cri/ -o reconnect"
alias mount_rcc="sshfs jmcclellan@midway2.rcc.uchicago.edu:/project2/guiming /home/jcm/remote/rcc/ -o reconnect"

# Shortcuts
alias rcc_logs="cd /home/jcm/remote/rcc/Julian/logs/"
alias rcc_simgs="cd /home/jcm/remote/rcc/Julian/sing/"
alias rsync="rsync --progress"
alias up="cd ../"
alias uup="cd ../../"
alias test_dose_to_256="cd /home/jcm/scratch/test_sing/ ; singularity run --app dose_to_256 ldpred2_test "/home/jcm/docs/gao_interview_2/output/Adm_Cancer_Chr22.ps21.txt" "/home/jcm/scratch/test_sing/test_Chr22.txt" 1 "vm""
alias test_bigsnpr_pt="cd /home/jcm/scratch/test_sing/ ; singularity run --app bigsnpr_pt ldpred2_test --code="/home/jcm/docs/ldpred2/test/data/ROOT_Chr{chr_num}_EUR_FBM256.ps21.txt" --snpinfo="/home/jcm/docs/ldpred2/test/data/ROOT_Chr{chr_num}.snpinfo.txt" --fam="/home/jcm/docs/ldpred2/test/data/ROOT_Chr7.fam" --sumstats="/home/jcm/remote/rcc/Mark_Nie/AABC/log_reg/AABC_Chr{chr_num}.overall.meta.txt" --scratch="/home/jcm/scratch/" --out="/home/jcm/scratch/test_sing/" --poc"

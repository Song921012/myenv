# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
#
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#autoload -Uz compinit
#compinit
# Completion for kitty
#kitty + complete setup zsh | source /dev/stdin

# VScode shell integration
#[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Alias
## Upadate
alias refresh="up && gitup && juliaupdate && pythonup && othersup && gitup && cd"
alias vpnrefresh="up && gitup && vpnon && juliaupdate && othersup && vpnoff && gitup && pythonup && cd"
alias syncup="nvim ~/myenv/gitup.sh"
alias refreshall="up && quartoup && rustupdate && juliaupdate && pythonup 
&& othersup && juliadevup && rup && fireup && cppup && fenicsup && gitup && clean && cd"
alias up="sudo apt update && sudo apt upgrade"
alias gitup="vpnon && source ~/myenv/gitup.sh && vpnoff"
alias quartoup="source ~/myenv/quartoup.sh"
alias juliaupdate="julia -e 'using Pkg;using Dates;Pkg.update();Pkg.gc(collect_delay = Day(0))'"
alias juliainstall="source ~/myenv/install_julia.sh && install_julia"
alias juliadevup="juliadev -e 'using Pkg;using Dates;Pkg.update();Pkg.gc(collect_delay = Day(0))'"
alias juliadevinstall="source ~/myenv/install_julia.sh && install_julia_dev"
alias pythonup="source ~/myenv/pythonup.sh"
alias pythoninstall="source ~/myenv/install_python.sh"
alias othersup="source ~/myenv/othersoftwaresup.sh"
alias fireup="source ~/myenv/firedrakeup.sh && firedrakeup"
alias fireadd="source ~/myenv/firedrakeup.sh && fireinstall"
alias firedrakeinstall="source ~/myenv/firedrakeinstall.sh"
alias fenicsup="source ~/myenv/fenicsup.sh"
alias cppup="source ~/myenv/packagesup.sh && cd"
alias rup="R -e 'update.packages()'"
alias rustupdate="rustup update && cargo install-update -a"
alias wkinstall="source ~/myenv/mywkenvsetup.sh"
alias sciwebup="source ~/myenv/sciwebnode.sh && updatesciwebnode"
## Clean
alias clean="sudo apt autoremove && sudo apt autoclean && conda clean --all && cd ~/.cache && rm -rf ./pip && cd"

## Paper
alias mkpaper="source ~/myenv/papertemplate.sh"
alias mkbib="ln -s  /home/aidishage/Desktop/MyStudyBook/mybib.bib ./mybib.bib"

## change Terminal theme
### bash -c  "$(wget -qO- https://git.io/vQgMr)" 

## SSH
alias sshzhen="ssh hpc.abm-lab.yorku.ca -l zhenw"
alias sshnancy="ssh hpc.abm-lab.yorku.ca -l nancys"
alias sshspf="ssh ubuntu@58.87.89.130"
## CD

alias wkspace="cd /home/aidishage/Desktop/MyProjects"
alias testspace="cd $HOME/Desktop/Test_repo"
alias fireenv="conda deactivate && source /home/aidishage/firedrake/bin/activate"
alias myenv="cd ~/myenv/src"
alias mytutor="cd ~/Desktop/MyProjects/MathEpiDeepLearningTutorial"
## ShortCuts
alias shortcuts="code ~/myenv/shortcuts.md"
alias chlight="xrandr --output $(xrandr | grep " connected" | cut -f1 -d " ") --brightness "
#export hostip=$(cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
#alias vpnon="export https_proxy=http://${hostip}:7890;export http_proxy=http://${hostip}:7890"
alias vpnon="export http_proxy=http://127.0.0.1:7890;export https_proxy=http://127.0.0.1:7890"
alias vpnoff="unset http_proxy;unset https_proxy"
## Others
alias fdu="du -l --max-depth=1 | sort -nr"
alias mathpix="/home/aidishage/myenv/src/Mathpix_Snipping_Tool-*.AppImage &"
alias obsidian="/home/aidishage/myenv/src/Obsidian*.AppImage &"
alias music="/home/aidishage/myenv/src/listen1* &"
alias chatbox="/home/aidishage/myenv/src/chat* &"
alias cursor="/home/aidishage/myenv/src/cursor* &"
alias docfetcher="sudo bash /home/aidishage/myenv/src/DocFetcher/DocFetcher-GTK3.sh"
alias gitsync="git pull && git add -A && git commit -m 'update' && git push"
alias et="/home/aidishage/.cargo/bin/et -l1 -s size-rev"
#alias make="sudo make"
#alias julia="conda deactivate && julia"
# Path
#export JULIA_NUM_THREADS=6
export CMDSTAN="/home/aidishage/myenv/src/cmdstan"
export STAN_BACKEND=CMDSTANPY
export PATH=$PATH:/opt/gurobi952/linux64/bin
export PATH=$PATH:/home/aidishage/.local/bin
export PATH=$HOME/.julia/bin:$PATH
export PATH=$PATH:$CMDSTAN
export CUDA_HOME=/usr/local/cuda # 记得链接cuda
export CUDA_TOOLKIT_ROOT_DIR=$CUDA_HOME
export PATH=$PATH:$CUDA_HOME/bin
export LD_LIBRARY_PATH=$CUDA_HOME/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/TensorRT/lib
export MA57_SOURCE=/home/aidishage/hsl/hsl_ma57-5.3.2.tar.gz
export HSL_MA57_PATH=/home/aidishage/hsl/hsl_ma57-5.3.2.tar.gz
export HSL_MA97_PATH=/home/aidishage/hsl/hsl_ma97-2.7.2.tar.gz
export PATH=/usr/local/texlive/2023/bin/x86_64-linux:$PATH
# COPT
export COPT_HOME=/opt/copt60
export COPT_LICENSE_DIR=/opt/copt60
export PATH=$PATH:$COPT_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$COPT_HOME/lib

export ALGENCAN_LIB_DIR=$HOME/myenv/lib
export PATH=$PATH:/opt/openrobots/bin
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib64/pkgconfig:/opt/openrobots/lib/pkgconfig
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64:/opt/openrobots/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/myenv/lib
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$HOME/myenv/include
export INCLUDE=$INCLUDE:$HOME/myenv/include
export PYTHONPATH=$PYTHONPATH:/home/aidishage/myenv/src/Optizelle/lib/python3.8/site-packages:/opt/openrobots/lib/python3.10/site-packages
export PYTHONPATH=$PYTHONPATH:/home/aidishage/myenv/pypkg
export SNOPT_LICENSE=$HOME/licenses/snopt7.lic

# Pardiso
export PARDISO_LIC_PATH=$HOME/licenses

# paropt

export PYTHONPATH=$PYTHONPATH:/home/aidishage/myenv/src/paropt

# Knitro
export ARTELYS_LICENSE=$HOME/licenses
export KNITRODIR="/opt/knitro-13.1.0-Linux-64"

#Gurobi
export PATH=$PATH:/opt/gurobi952/linux64/bin

#mojo

export MODULAR_HOME="/home/aidishage/.modular"
export PATH="/home/aidishage/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

# PETSC
#export PETSC_ARCH=arch-linux-c-debug
#export PETSC_DIR=$HOME/myenv/src/petsc
#export PYTHONPATH=$PYTHONPATH:$PETSC_DIR/$PETSC_ARCH/lib
#export SLEPC_DIR=$HOME/myenv/src/slepc
#export PYTHONPATH=$PYTHONPATH:$SLEPC_DIR/$PETSC_ARCH/lib
export OMP_NUM_THREADS=1
#export PYTHONPATH=$PYTHONPATH:$HOME/myenv/src/dolfinx/python/build/lib.linux-x86_64-3.10
# Galahad
export GALAHAD=/home/aidishage/myenv/src/Galahad/galahad
export PATH=$PATH:$GALAHAD/bin
export ARCHDEFS="/home/aidishage/myenv/src/Galahad/archdefs/../archdefs"
export SIFDECODE="/home/aidishage/myenv/src/Galahad/sifdecode"
export CUTEST="/home/aidishage/myenv/src/Galahad/cutest"
export GALAHAD="/home/aidishage/myenv/src/Galahad/galahad"
export PATH="${SIFDECODE}/bin:${PATH}"
export PATH="${CUTEST}/bin:${PATH}"
export PATH="${GALAHAD}/bin:${PATH}"
export MANPATH="${SIFDECODE}/man:${MANPATH}"
export MANPATH="${CUTEST}/man:${MANPATH}"
export MANPATH="${GALAHAD}/man:${MANPATH}"
export INCLUDE="${GALAHAD}/include:${INCLUDE}"
export MYARCH="pc64.lnx.gfo"

export NVM_NODEJS_ORG_MIRROR="https://npmmirror.com/mirrors/node"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
    # other plugins...
    git
    zsh-syntax-highlighting
    z
    zsh-autosuggestions # 插件之间使用空格隔开
    asdf
)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion






# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/aidishage/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/aidishage/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/aidishage/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/aidishage/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#eval "$(starship init zsh)"
source <("/home/aidishage/.nextstrain/cli-standalone/nextstrain" init-shell zsh)

PATH="/home/aidishage/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/aidishage/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/aidishage/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/aidishage/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/aidishage/perl5"; export PERL_MM_OPT;

#if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#        source /etc/profile.d/vte.sh
#fi

eval "$(atuin init zsh --disable-up-arrow)"
eval "chlight 0.5"


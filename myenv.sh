# Basic setup
sudo apt-get install software-properties-common
sudo apt install aptitude
sudo apt install vim vim-scripts vim-gtk
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
sudo apt install python3-neovim
curl -sLf https://spacevim.org/install.sh | bash # spacevim
sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo apt install tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish


# stacer
sudo add-apt-repository ppa:oguzhaninan/stacer -y
sudo apt-get update
sudo apt-get install stacer -y

#Install starship
curl -sS https://starship.rs/install.sh | sh

#Python
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3
sudo apt install python3-dev

#Rust
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh

# Terminal
## alcritty
#sudo add-apt-repository ppa:aslatter/ppa
#sudo apt update
#sudo apt install alacritty
## kitty
sudo apt install kitty -y


#Linux Command
sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-stable
sudo apt update
sudo apt install duf bat exa fsearch -y # Modern Commands
cargo install du-dust
ln -s /usr/bin/batcat ~/.local/bin/bat

# Linux store
sudo apt install snapd
sudo apt install ubuntu-restricted-extras
sudo apt install gnome-tweaks


#git clone https://github.com/alvatip/Nordzy-cursors
#cd Nordzy-cursors
#sudo ./install.sh
sudo apt-get install dconf-cli uuid-runtime


# Change Terminal Theme
#bash -c "$(wget -qO- https://git.io/vQgMr)"
#cd


# cuda
sudo apt install system76-cuda-latest
sudo apt install system76-cudnn-11.2

# Vscode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# node
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs
# java
sudo apt install default-jdk
sudo apt install default-jre
# Install zotero
wget -qO- https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | sudo bash
sudo apt update
sudo apt install zotero

# Install develop environment
sudo apt install build-essential
sudo apt -y install clang lldb lld
sudo apt-get -y install ninja-build
sudo apt install cmake
sudo apt install mpich
sudo apt install  wget pkg-config liblapack-dev libmetis-dev libblas-dev libgsl-dev libpugixml-dev pdf2svg libsuitesparse-dev libfontconfig-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev libudunits2-dev libgdal-dev swig libcppad-dev libcairo2-dev
sudo apt-get install graphviz pandoc inkscape
sudo apt install libeigen3-dev libadolc-dev universal-ctags  # eigen3 adolc
sudo apt-get install -y gnuplot # gnuplot


# Miniconda
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
conda install mamba -n base -c conda-forge

# nix
#sh <(curl -L https://nixos.org/nix/install) --daemon

# Haskell
curl -sSL https://get.haskellstack.org/ | sh

# Docker

source ~/myenv/dockerinstall.sh

# Install R
sudo apt update -qq
sudo apt install --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt install --no-install-recommends r-base
sudo add-apt-repository ppa:c2d4u.team/c2d4u4.0+

# Install Texlive

cd /tmp # working directory of your choice
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz # or curl instead of wget
zcat install-tl-unx.tar.gz | tar xf -
cd install-tl-*
perl ./install-tl --no-interaction
#Finally, prepend /usr/local/texlive/YYYY/bin/PLATFORM to your PATH(.zshrc,.profile), e.g., /usr/local/texlive/2022/bin/x86_64-linux 
# sudo visudo and add
# Defaults secure_path="/usr/local/texlive/2014/bin/x86_64-linux:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
cd
# Install texstudio
sudo add-apt-repository ppa:sunderme/texstudio
sudo apt update
sudo apt install texstudio

cpan Unicode::GCString
cpan App::cpanminus
cpan YAML::Tiny
perl -MCPAN -e 'install "File::HomeDir"'

# sudo apt install texlive-full -y
# sudo visudo


# Fenics fenicsx

# lunar vim
sudo apt install shellcheck
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)


# qbittoreent

sudo add-apt-repository ppa:poplite/qbittorrent-enhanced
sudo apt update
sudo apt install qbittorrent-enhanced

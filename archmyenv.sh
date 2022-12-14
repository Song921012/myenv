# Basic setup
cd ~/Downloads
git clone https://github.com/ronniedroid/getnf.git
cd getnf
./install.sh
cd
#reboot

# add pacman repo
sudo pacman -Syyu

## archlinuxcn
#[archlinuxcn/repo: Arch Linux CN Repository](https://github.com/archlinuxcn/repo)
## arch4edu
#[arch4edu/arch4edu: Arch Linux Repository for Education](https://github.com/arch4edu/arch4edu)




yay -S wget curl git
sudo pacman -S gnome-keyring libsecret libgnome-keyring
yay -S neovim  python-pynvim provider-clipboard
yay -S ripgrep
curl -sLf https://spacevim.org/install.sh | bash # spacevim
yay -S zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

yay -S tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# fish
yay -S fish
#lua
yay -S lua

# stacer
yay -S stacer

#Install starship
curl -sS https://starship.rs/install.sh | sh

# Python


#Rust
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh


#Linux Command
yay -S duf bat exa fsearch # Modern Commands
cargo install du-dust
ln -s /usr/bin/batcat ~/.local/bin/bat



# Change Terminal Theme
#bash -c "$(wget -qO- https://git.io/vQgMr)"
#cd


# cuda
yay -S cuda cudnn

# Vscode
yay -S visual-studio-code-bin
# node
yay -S nodejs npm yarn
# java
yay -S jre-openjdk jdk-openjdk
# Install zotero
yay -S zotero

# obsidian zoom netease-cloud-music
yay -S obsidian zoom thunderbird xorg-xdm okular microsoft-edge-stable-bin gwenview slack-desktop wps-office-cn aur/ttf-wps-fonts foxitreader
yay -S xdman
sudo pacman -S libreoffice-still libreoffice-still-zh-cn screenkey
sudo pacman -S flatpak
flatpak install wemeet # tab tengxunhuiyi
flatpak install netease # tab wangyiyingyue
flatpak install xmind
flatpak install LosslessCut
flatpak install yesplaymusic
# appimage file: Mathpix, listen1
# Install develop environment

yay -S base-devel bison flex gvfs-mtp mtpfs
yay -S cmake ninja mpich
yay -S llvm llvm-libs clang lldb lld

yay -S eigen ctags gnuplot graphviz pandoc inkscape pkgconf metis mpich gsl pugixml pdf2svg suitesparse fontconfig harfbuzz fribidi
freetype2 libpng libtiff libjpeg-turbo gdal udunits cppad swig cairo
yay -S coin-or-ipopt
yay -S paraview
yay -S hwloc

# Install VMWare(configuration is difficult, just ignore it)
#sudo pacman -S fuse2 gtkmm pcsclite libcanberra  #linux-headers if not
#yay -S vmware-workstation
#sudo systemctl start vmware-networks-configuration.service
#sudo systemctl enable vmware-networks.service  vmware-usbarbitrator.service
#sudo systemctl start vmware-networks.service  vmware-usbarbitrator.service
#sudo systemctl status vmware-networks.service  vmware-usbarbitrator.service
# modprobe -a vmw_vmci vmmon

# matlab: (configuration is difficult, just ignore it)


# Miniconda
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
conda install mamba -n base -c conda-forge
conda install -c conda-forge gdal gcc gxx gfortran pkgconfig mpich armadillo cmake ninja blas lapack suitesparse ipopt llvm-tools sundials cppad nlopt

# nix
#sh <(curl -L https://nixos.org/nix/install) --daemon

# Haskell
curl -sSL https://get.haskellstack.org/ | sh

# Docker

#source ~/myenv/dockerinstall.sh

# Install R and quarto
yay -S r rstudio-desktop quarto

# Install Texlive

cd /tmp # working directory of your choice
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz # or curl instead of wget
zcat install-tl-unx.tar.gz | tar xf -
cd install-tl-*
sudo perl ./install-tl --no-interaction
#Finally, prepend /usr/local/texlive/YYYY/bin/PLATFORM to your PATH(.zshrc,.profile), e.g., /usr/local/texlive/2022/bin/x86_64-linux 
# `sudo visudo` and add
# Defaults `secure_path="/usr/local/texlive/2014/bin/x86_64-linux:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"`
cd
# Install texstudio
yay -S texstudio

cpan Unicode::GCString
cpan App::cpanminus
cpan YAML::Tiny
perl -MCPAN -e 'install "File::HomeDir"'

# sudo apt install texlive-full -y
# sudo visudo


# Fenics fenicsx

# lunar vim
yay -S shellcheck
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)


# qbittoreent

yay -S qbittorrent-enhanced

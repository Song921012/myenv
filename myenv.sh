# Basic setup
sudo apt-get install software-properties-common
sudo apt install aptitude
sudo apt install vim vim-scripts vim-gtk
curl -sLf https://spacevim.org/install.sh | bash # spacevim
sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo apt install tmux
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3
sudo apt install python3-dev
sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-stable
sudo apt update
sudo apt install fsearch -y
sudo apt install snapd
sudo apt install ubuntu-restricted-extras
sudo apt install gnome-tweaks
# cuda
sudo apt install system76-cuda-latest
sudo apt install system76-cudnn-11.2

# Vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
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
sudo apt -y install clang
sudo apt -y install clang lldb lld
sudo apt-get -y install ninja-build
sudo apt install cmake
sudo apt install  wget pkg-config liblapack-dev libmetis-dev libblas-dev libpugixml-dev pdf2svg libsuitesparse-dev libfontconfig-dev
libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev libudunits2-dev libgdal-dev # lapack blas metis
sudo apt install libeigen3-dev libadolc-dev # eigen3 adolc
sudo apt-get install -y gnuplot # gnuplot
# Install R
sudo apt update -qq
sudo apt install --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt install --no-install-recommends r-base
sudo add-apt-repository ppa:c2d4u.team/c2d4u4.0+

# Install texlive
# sudo apt install texlive-full -y
# sudo visudo


# Fenics fenicsx
sudo apt -y install gmsh paraview

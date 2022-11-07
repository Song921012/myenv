export pythonversion=3.11
export juliabigversion=1.8
export juliasmallversion=1.8.2
export juliadevversion=1.9
# linux
cd
git clone https://github.com/Song921012/myenv.git
git clone https://github.com/Song921012/myhsl.git
mv myhsl hsl
mkdir Templates
cp -rf ~/myenv/template/* ~/Templates
source ~/myenv/myenv.sh
cp -f ~/myenv/.zshrc ~
ln -f ~/.zshrc ~/myenv/.zshrc
mkdir ~/.SpaceVim.d
cp -f ~/myenv/init.toml ~/.SpaceVim.d
ln -f ~/.SpaceVim.d/init.toml ~/myenv/init.toml
cp -f ~/myenv/init.vim ~/.config/nvim
ln -f ~/.config/nvim/init.vim ~/myenv/init.vim
cp -f ~/myenv/starship.toml ~/.config
ln -f ~/.config/starship.toml ~/myenv/starship.toml
mkdir -p ~/.config/alacritty
cp -f ~/myenv/alacritty.yml ~/.config/alacritty
ln -f ~/.config/alacritty/alacritty.yml ~/myenv/alacritty.yml
mkdir -p ~/.config/kitty
cp -f ~/myenv/kitty.conf ~/.config/kitty
ln -f ~/.config/kitty/kitty.conf ~/myenv/kitty.conf
## Install miniconda
zsh
conda update conda
conda install python=$pythonversion
## Install texlive
## Install Rstudio

# set up work environment
wkinstall
# Cpp
source ~/myenv/gitinstall.sh
cppup

# Install Python
pythoninstall
# Install julia
juliainstall $juliabigversion $juliasmallversion
juliadevinstall
# Install r
R --no-save <~/myenv/importr.r
# Install fenics/firedrake
conda create -n fenics -c conda-forge fenics pyoptsparse julia python=$pythonversion
conda create -n fenicsx -c conda-forge fenics-dolfinx mpich pyvista python=$pythonversion
fenicsup


# firedrake
firedrakeinstall
fireup

# compile julia
mkdir -p ~/.julia/config
cp ~/myenv/startup.jl ~/.julia/config
ln -f ~/.julia/config/startup.jl ~/myenv/startup.jl
cp ~/myenv/startup_ijulia.jl ~/.julia/config
ln -f ~/.julia/config/startup_ijulia.jl ~/myenv/startup_ijulia.jl
cp ~/myenv/Project.toml ~/.julia/environments/v$juliabigversion
ln -f ~/.julia/environments/v$juliabigversion/Project.toml ~/myenv/Project.toml
cp ~/myenv/Manifest.toml ~/.julia/environments/v$juliabigversion
ln -f ~/.julia/environments/v$juliabigversion/Manifest.toml ~/myenv/Manifest.toml
cd
juliaup
mkdir ~/.julia/environments/v$juliadevversion
cp -f ~/.julia/environments/v$juliabigversion/* ~/.julia/environments/v$juliadevversion
juliadevup

# Update all
refreshall

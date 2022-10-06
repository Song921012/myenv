export pythonversion=3.10.6
export juliabigversion=1.8
export juliasmallversion=1.8.2
export juliadevversion=1.9
# linux
cd
git clone https://github.com/Song921012/myenv.git
git clone https://github.com/Song921012/myhsl.git
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
## Install miniconda
conda update conda
conda install python=$pythonversion
## Install texlive
## Install Rstudio
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
conda create -n fenics -c conda-forge fenics julia python=$pythonversion
conda create -n fenicsx -c conda-forge fenics-dolfinx mpich pyvista python=$pythonversion
fenicsup
# firedrake
firedrakeinstall
fireup

# compile julia
mkdir ~/.julia/config
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

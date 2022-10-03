# linux
cd
git clone https://github.com/Song921012/myenv.git
git clone https://github.com/Song921012/myhsl.git
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
conda install python=3.10.6
## Install texlive
## Install Rstudio
# Cpp
source ~/myenv/gitinstall.sh
cppup

# Install Python
pythoninstall
# Install julia
juliainstall 1.8 1.8.2
juliadevinstall
# Install r
R --no-save <~/myenv/importr.r
# Install fenics/firedrake
conda create -n fenics -c conda-forge fenics python=3.10.6
conda create -n fenicsx -c conda-forge fenics-dolfinx mpich pyvista python=3.10.6
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
#cp ~/myenv/Project.toml ~/.julia/environments/v1.8
#cp ~/myenv/Manifest.toml ~/.julia/environments/v1.8

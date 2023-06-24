export pythonversion=3.11
export juliabigversion=1.9
export juliasmallversion=1.9.1
export juliadevversion=1.10
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
cp -f ~/myenv/config.lua ~/.config/lvim/config.lua
ln -f ~/.config/lvim/config.lua ~/myenv/config.lua
## Install miniconda
zsh
conda update conda
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
juliainstall
juliadevinstall
# Install r
R --no-save <~/myenv/importr.r
# Install fenics/firedrake
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

#sudo tlmgr update --self
#sudo tlmgr update --all
sudo npm install -g npm@latest
sudo npm update
cd ~/myenv
conda deactivate
conda activate base
conda env export >environment.yml
conda deactivate
conda activate fenics
conda env export >fenicsenvironment.yml
conda deactivate
conda activate fenicsx
conda env export >fenicsxenvironment.yml
R --no-save <~/myenv/exportrenv.r
conda deactivate
conda activate base

#cd

#ln -f .profile ~/myenv/.profile
#ln -f .zshrc ~/myenv/.zshrc
#ln -f ~/.SpaceVim.d/init.toml ~/myenv/init.toml
#ln -f ~/.config/nvim/init.vim ~/myenv/init.vim
#ln -f ~/.tmux/.tmux.conf ~/myenv/.tmux.conf








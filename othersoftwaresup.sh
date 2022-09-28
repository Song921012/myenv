sudo tlmgr update --self
sudo tlmgr update --all
sudo npm install -g npm@latest
sudo npm update
cd ~/myenv
conda activate base
conda env export >environment.yml
conda activate fenics
conda env export >fenicsenvironment.yml
conda activate fenicsx
conda env export >fenicsxenvironment.yml
R --no-save <~/myenv/exportrenv.r
conda activate base
cd

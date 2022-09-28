sudo tlmgr update --self
sudo tlmgr update --all
sudo npm install -g npm@latest
sudo npm update
cd ~/myenv
conda env export >environment.yml
R --no-save <~/myenv/exportrenv.r

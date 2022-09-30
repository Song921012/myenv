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
cd ~/Desktop/MyStudyBook
git pull
cd ~/Desktop/MyObsidianNotes
git pull
cd ~/Desktop/MyPapersNotes
git pull
cd ~/myenv
git pull
cd ~/hsl # 记得修改文件夹
git pull
cd ~/Desktop/WebBookPapers/已完成PAPER
git pull
cd ~/Desktop/WebBookPapers/Mathepia
git pull
cd ~/Desktop/WebBookPapers/MyWebsite
git pull
cd ~/Desktop/WebBookPapers/MathepiaBook
git pull
#cd ~/Desktop/WebBookPapers/AI4ScienceBook
#git pull
cd ~/Desktop/MyProjects/MathEpiDeepLearningTutorial
git pull
cd ~/.julia/dev/Mathepia
git pull
cd ~/.julia/dev/MathepiaData
git pull
cd ~/.julia/dev/MathepiaInference
git pull
cd ~/.julia/dev/MathepiaOptimal
git pull
cd ~/.julia/dev/MathepiaModels
git pull
cd ~/.julia/dev/OptLibrary
git pull
cd


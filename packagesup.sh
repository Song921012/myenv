conda deactivate
conda activate base
myenv

## cppad
#myenv
#sudo rm -rf CppAD
#git clone https://github.com/coin-or/CppAD.git
#cd CppAD
#git pull
#sudo rm -rf build
#mkdir build
#cd build && cmake ..
#sudo make install
## cmdstan
myenv
cd cmdstan
git pull
make -j6 build  
## Ipopt
#myenv
#cd Ipopt
#git pull
#sudo rm -rf build
#mkdir build
#cd build
#../configure
#make
#make test
#sudo make install

## nlopt
#myenv
#cd nlopt
#git pull
#sudo rm -rf build
#mkdir build
#cd build
#cmake ..
#make
#sudo make install


#myenv
###you have to setup conda development environment first
## ColPack
#myenv
#sudo rm -rf ColPack && git clone https://github.com/CSCsw/ColPack.git  #Download ColPack
#cd ColPack             # ColPack Root Directory
#cd build/automake      # automake folder
#autoreconf -vif        # generate configure files based on the machince
#mkdir mywork
#cd mywork        # modify fullpath to your destination folder if need
#../configure  --prefix=/usr/local                   
#make -j 6             # Where "4" is the number of cores on your machine
#sudo make install  

## Adol-C
#conda deactivate
#myenv
#sudo rm -rf ADOL-C && git clone https://github.com/coin-or/ADOL-C.git
#cd ADOL-C
#autoreconf -fi
#./configure --prefix=/usr/local --enable-sparse
#make
#sudo make install
#conda activate base
## psopt 先搭建conda编译环境
#conda deactivate
#yay -S coin-or-ipopt
myenv
cd psopt
sudo rm -rf build
mkdir build
cd build
cmake -DBUILD_EXAMPLES=ON ..
sudo make
sudo make install
myenv
cd ./psopt/build/examples/delay1
./delay1
conda activate base
## ifopt
#myenv
#cd ifopt
#sudo rm -rf build
#mkdir build
#cd build
#cmake ..
#make
#sudo make install
#myenv

## pyopt
#myenv
#sudo rm -rf pyOpt
#git clone https://github.com/madebr/pyOpt.git
#cd pyOpt
#python setup.py build_ext --inplace
#myenv


##
#myenv
#sudo rm -rf sundials
#git clone https://github.com/LLNL/sundials.git
#cd sundials
#git pull
#sudo rm -rf build
#mkdir build
#cd build
#cmake -DEXAMPLES_ENABLE_CXX=ON -DENABLE_LAPACK=ON -DENABLE_MPI=ON .. #-DENABLE_PETSC=ON -DPETSC_DIR=/home/aidishage/myenv/src/petsc ..
#make -j 6
#sudo make install

# algencan
myenv
cd algencan-4.0.0
make
myenv
cd algencan-3.1.1
make

## Galahad
### after gitinstallation
### copy hsl-archive-galahad hsl-galahad to folder ~/myenv/src/Galahad
#myenv
#cp -r ~/hsl/hslarchive-galahad ~/myenv/src/Galahad
#cp -r ~/hsl/hsl-galahad ~/myenv/src/Galahad
#myenv
#conda deactivate
#cd Galahad/archdefs
#./install_optrove
#double float
#conda activate base
## algencan

# Parropt
myenv
rm -rf paropt
git clone https://github.com/Mathepia/paropt.git
cd paropt
make
cd
source ~/.zshrc




conda deactivate
myenv
sudo apt-get install gcc g++ gfortran git patch wget pkg-config liblapack-dev libmetis-dev

## cppad
myenv
#sudo rm -rf CppAD
#git clone https://github.com/coin-or/CppAD.git
cd CppAD
git pull
sudo rm -rf build
mkdir build
cd build && cmake ..
sudo make install
## cmdstan
myenv
cd cmdstan
git pull
make -j6 build  
## Ipopt
myenv
cd Ipopt
git pull
sudo rm -rf build
mkdir build
cd build
../configure
make
make test
sudo make install

## nlopt
myenv
cd nlopt
git pull
sudo rm -rf build
mkdir build
cd build
cmake ..
make
sudo make install


myenv

## psopt
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

## ifopt
myenv
cd ifopt
sudo rm -rf build
mkdir build
cd build
cmake ..
make
sudo make install
myenv

## pyopt
myenv
#sudo rm -rf pyOpt
#git clone https://github.com/madebr/pyOpt.git
cd pyOpt
python setup.py build_ext --inplace
myenv


##
myenv
#sudo rm -rf sundials
#git clone https://github.com/LLNL/sundials.git
cd sundials
git pull
sudo rm -rf build
mkdir build
cd build
cmake -DEXAMPLES_ENABLE_CXX=ON -DENABLE_LAPACK=ON -DENABLE_MPI=ON .. #-DENABLE_PETSC=ON -DPETSC_DIR=/home/aidishage/myenv/src/petsc ..
make -j 6
sudo make install

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
#cd archdefs
#./install_optrove
## algencan

# Parropt
myenv
#rm -rf paropt
#git clone https://github.com/Mathepia/paropt.git
cd paropt
make
cd
source ~/.zshrc




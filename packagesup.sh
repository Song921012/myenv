conda deactivate
myenv
sudo apt-get install gcc g++ gfortran git patch wget pkg-config liblapack-dev libmetis-dev
## cmdstan
myenv
cd cmdstan
git pull
make -j6 build  
## Ipopt
cd Ipopt
git pull
#sudo rm -rf build
#mkdir build
cd build
./configure
make
make test
sudo make install

## nlopt
myenv
cd nlopt
git pull
#sudo rm -rf build
#mkdir build
cd build
cmake ..
make
sudo make install
pip install nlopt
myenv

## psopt
cd psopt
#sudo rm -rf build
#mkdir build
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

## psopt
myenv
sudo rm -rf pyOpt
git clone https://github.com/madebr/pyOpt.git
cd pyOpt
python setup.py build_ext --inplace
myenv


conda deactivate
myenv
sudo apt-get install gcc g++ gfortran git patch wget pkg-config liblapack-dev libmetis-dev
## cmdstan
cd cmdstan
git pull
make -j6 build  
## Ipopt
cd Ipopt
git pull
sudo rm -rf build
mkdir build
cd build
./configure
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
pip install nlopt
myenv

## psopt
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
mkdir build && cd build
cmake ..
make
sudo make install


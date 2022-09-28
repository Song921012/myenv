conda deactivate
#myenv
#cd GKlib
#git pull
#sudo rm -rf build
#make config prefix=/usr/local openmp=set
#sudo make install
#myenv
#cd METIS
#git pull
#sudo rm -rf build
#make config shared=1 cc=gcc prefix=/usr/local
#sudo make install
#myenv
#cd ParMETIS
#git pull
#sudo rm -rf build
#make config cc=mpicc prefix=/usr/local
#sudo make install
myenv
cd ADIOS2
git pull
sudo rm -rf adios2-build
mkdir adios2-build && cd adios2-build
cmake ..
sudo make -j 6
sudo make install
myenv
cd hdf5
CC=/usr/bin/mpicc
./configure --prefix=/usr/local/ --enable-shared --enable-parallel
make
make check
sudo make install
h5pcc --showconfig
myenv
cd hdf5
export CC=mpicc
export HDF5_MPI="ON"
export HDF5_DIR="$HOME/myenv/src/hdf5"  # If this isn't found by default
pip install .


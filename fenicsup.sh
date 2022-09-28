conda deactivate
unset PYTHONPATH
unset SLEPC_DIR
unset PETSC_DIR
unset PETSC_ARCH
#sudo apt install libpugixml-dev
myenv
#cd ufl
#git pull
#pip install .
#myenv
#pip install git+https://github.com/FEniCS/basix.git
#myenv
#cd ffcx
#git pull
#pip install .
#myenv
#echo "please setup parallel hdf5 if not"
# Install Petsc
myenv
sudo rm -rf petsc && git clone https://gitlab.com/petsc/petsc.git
cd petsc
git pull
./configure --download-mpich --download-fblaslapack --download-ptscotch --download-suitesparse --download-mumps --download-hypre --download-scalapack --download-parmetis --download-metis --with-petsc4py=1 --download-eigen
make all check
myenv
sudo rm -rf slepc && git clone https://gitlab.com/slepc/slepc
cd slepc
git pull
export SLEPC_DIR=$HOME/myenv/src/slepc
export PETSC_DIR=$HOME/myenv/src/petsc
export PETSC_ARCH=arch-linux-c-debug
cd $SLEPC_DIR
./configure --with-slepc4py=1
make
make check

#myenv
#sudo rm -rf dolfinx && git clone https://github.com/FEniCS/dolfinx.git
#cd dolfinx
#git pull
#cd cpp
#rm -rf build
#mkdir build
#cd build
#cmake ..
#sudo make install
#source /usr/local/lib/dolfinx/dolfinx.conf

#myenv
#sudo rm -rf pybind*
#wget -nc --quiet https://github.com/pybind/pybind11/archive/v2.2.1.tar.gz
#tar -xf v2.2.1.tar.gz
#cd pybind11-2.2.1
#mkdir build-dir
#cd build-dir
#cmake -DPYBIND11_TEST=off -DCMAKE_INSTALL_PREFIX=/path/to/pybind11/install ..
#sudo make install
#export PYBIND11_DIR=/home/aidishage/myenv/src/pybind11-2.2.1
#cd ~/myenv/src/dolfinx/python
#pip install .
#myenv
#pip install -U pyvista

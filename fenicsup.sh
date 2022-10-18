conda deactivate
unset PYTHONPATH
unset SLEPC_DIR
unset PETSC_DIR
unset PETSC_ARCH
#sudo apt install libpugixml-dev
#echo "please setup parallel hdf5 if not"
# Install Petsc
myenv
#sudo rm -rf petsc && git clone https://gitlab.com/petsc/petsc.git
cd petsc
git pull
./configure --download-fblaslapack --download-ptscotch --download-suitesparse --download-mumps --download-hypre --download-scalapack --download-parmetis --download-metis --with-petsc4py=1 --download-eigen
make all check
myenv
#sudo rm -rf slepc && git clone https://gitlab.com/slepc/slepc
cd slepc
git pull
export SLEPC_DIR=$HOME/myenv/src/slepc
export PETSC_DIR=$HOME/myenv/src/petsc
export PETSC_ARCH=arch-linux-c-debug
cd $SLEPC_DIR
./configure --with-slepc4py=1
make
make check


## update fenics

conda deactivate
#conda create -n fenics -c conda-forge fenics python=3.10.6
conda activate fenics
conda update --all
pip install Numpy Pandas Matplotlib scipy sympy statsmodels jupyter radian flake8 pylint yapf virtualenv rich pygments
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
pip install -U torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
pip install -U git+https://github.com/dolfin-adjoint/pyadjoint.git@master git+https://github.com/funsim/moola.git@master git+https://github.com/IvanYashchuk/fecr@master git+https://github.com/IvanYashchuk/jax-fenics-adjoint.git@master cashocs "meshio[all]" gmsh pyvista #git+https://github.com/barkm/torch-fenics.git@master
julia -e 'using Pkg;Pkg.add(url="https://github.com/IvanYashchuk/PyFenicsAD.jl");Pkg.add(url="https://github.com/Song921012/FEniCS.jl.git");'
juliaup
## update fenicsx
conda deactivate
# conda create -n fenicsx -c conda-forge fenics-dolfinx mpich pyvista python=3.10.6
conda activate fenicsx
conda update --all
pip install Numpy Pandas Matplotlib scipy sympy statsmodels jupyter radian flake8 pylint yapf virtualenv rich pygments
conda deactivate
# Fenics
#conda activate base
#myenv
#pip install git+https://github.com/FEniCS/basix.git
#pip install git+https://github.com/FEniCS/ufl.git
#pip install git+https://github.com/FEniCS/ffcx.git
#myenv

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
#source ~/.zshrc
#cd ~/myenv/src/dolfinx/python
#python3 setup.py build
#myenv
#pip install -U pyvista
cd
source ~/.zshrc
conda clean --all

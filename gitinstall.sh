myenv
sudo rm -rf psopt && git clone https://github.com/PSOPT/psopt.git
sudo rm -rf ifopt && git clone https://github.com/ethz-adrl/ifopt.git
sudo rm -rf nlopt && git clone https://github.com/stevengj/nlopt.git
sudo rm -rf petsc && git clone https://gitlab.com/petsc/petsc.git
sudo rm -rf slepc && git clone https://gitlab.com/slepc/slepc
git clone https://github.com/stan-dev/cmdstan.git --recursive

sudo rm -rf Ipopt && git clone https://github.com/coin-or/Ipopt.git
cd Ipopt
git clone https://github.com/coin-or-tools/ThirdParty-Mumps.git
cd ThirdParty-Mumps
./get.Mumps
./configure
make
sudo make install
myenv
cd Ipopt
git clone https://github.com/coin-or-tools/ThirdParty-HSL.git
cd ThirdParty-HSL
# copy hsl files
#./configure
#make
#sudo make install
myenv

echo " Copy HSL Files to Ipopt/ThirdParty-HSL"


# CppAD
myenv
git clone https://github.com/coin-or/CppAD.git

# Sundials
#sudo rm -rf sundials
git clone https://github.com/LLNL/sundials.git

# Galahad
myenv
mkdir Galahad
cd Galahad
git clone https://github.com/ralna/ARCHDefs ./archdefs
git clone https://github.com/ralna/GALAHAD ./galahad
git clone https://github.com/ralna/SIFDecode ./sifdecode
git clone https://github.com/ralna/CUTEst ./cutest
myenv
#sudo rm -rf ParMETIS && git clone https://github.com/KarypisLab/ParMETIS.git
#sudo rm -rf GKlib && git clone https://github.com/KarypisLab/GKlib.git
#sudo rm -rf METIS && git clone https://github.com/KarypisLab/METIS.git
#sudo rm -rf dolfinx && git clone https://github.com/FEniCS/dolfinx.git

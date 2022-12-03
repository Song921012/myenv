install_julia(){
echo "please input julia big version, e.g., 1.8"
read julabigversion
echo "please input julia small version, e.g., 1.8.2, should be matched with big version"
read julasmallversion
cd;
wget https://julialang-s3.julialang.org/bin/linux/x64/$julabigversion/julia-$julasmallversion-linux-x86_64.tar.gz;
tar -xvzf julia-$julasmallversion-linux-x86_64.tar.gz;
sudo cp -r julia-$julasmallversion /opt/;
sudo ln -sf /opt/julia-$julasmallversion/bin/julia /usr/local/bin/julia;
cd;
sudo rm -rf julia-$julasmallversion*;
sudo rm -rf ~/.julia/compiled/v$julabigversion}

install_julia_dev(){
echo "please input julia dev big version, e.g., 1.9"
read juliadevversion
cd ~/Downloads
sudo rm -rf julia-*
wget https://julialangnightlies-s3.julialang.org/bin/linux/x86_64/julia-latest-linux-x86_64.tar.gz
tar -xvzf julia-latest-linux-x86_64.tar.gz;
sudo rm -rf /opt/julia-dev && sudo mkdir /opt/julia-dev
sudo rm -rf ~/.julia/compiled/v$juliadevversion
sudo rm -rf julia-latest-linux-x86_64.tar.gz;
sudo cp -rf ./julia-*/* /opt/julia-dev;
sudo ln -sf /opt/julia-dev/bin/julia /usr/local/bin/juliadev;
sudo rm -rf julia-*
cd;
}

setup_julia(){
	julia -e 'using MPIPreferences; MPIPreferences.use_jll_binary("MPICH_jll");using Pkg;Pkg.build("MPI")'
	julia -e 'using MPI;MPI.install_mpiexecjl()'
}

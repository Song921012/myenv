install_julia(){
wget https://julialang-s3.julialang.org/bin/linux/x64/$1/julia-$2-linux-x86_64.tar.gz;
tar -xvzf julia-$2-linux-x86_64.tar.gz;
sudo cp -r julia-$2 /opt/;
sudo ln -sf /opt/julia-$2/bin/julia /usr/local/bin/julia;
cd;
sudo rm -rf julia-$2*}

install_julia_dev(){
sudo rm -rf /opt/julia-dev && sudo mkdir /opt/julia-dev
sudo rm -rf ~/.julia/compiled/v1.9
cd ~/Downloads
sudo rm -rf julia-*
wget https://julialangnightlies-s3.julialang.org/bin/linux/x86_64/julia-latest-linux-x86_64.tar.gz
tar -xvzf julia-latest-linux-x86_64.tar.gz;
sudo rm -rf julia-latest-linux-x86_64.tar.gz;
sudo cp -rf ./julia-*/* /opt/julia-dev;
sudo ln -sf /opt/julia-dev/bin/julia /usr/local/bin/juliadev;
sudo rm -rf julia-*
cd;
}

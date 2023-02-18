echo "please input python version, e.g. 3.10"
read pythonversion
conda activate
conda install -c conda-forge python=$pythonversion jupyter jupyterlab
pip install --upgrade pip
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
pip install -U "sktime[all_extras]"
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
pip install -U tensorflow
pip install Numpy Pandas Matplotlib scipy scikit-learn sympy statsmodels networkx  seaborn jupyter_contrib_nbextensions nbconvert\
  radian conan flake8 pylint huggingface-hub yapf virtualenv virtualenvwrapper-win rich pygments talk2stat isort\
  SAlib deepxde streamlit streamlit-pandas-profiling pandas-profiling plotly-express\
  tensorflow-probability gplearn gpflow\
  gpytorch botorch pytorch-forecasting neuralprophet torchdyn torchgan torchsde torchcde torchdiffeq torchmetrics pytorch-lightning  pyro-ppl\
  Casadi sbi pints elfi POT lifelines casadi Pulp lmfit pysindy pysr pydmd cvxpy probnum POT pylops pyproximal\
  pyomo gekko dymos leafmap optax flax numpyro distrax efax diffrax jaxopt sgmcmcjax gpjax blackjax pyvista
  
  
sudo npm install -g yarn
sudo npm install -g hexo

#cargo install --git https://github.com/neovide/neovide


jupyter labextension install @jupyter-widgets/jupyterlab-manager keplergl-jupyter

# fenics and fenicsx and firedrake
conda deactivate
conda create -n fenics -c conda-forge fenics cashocs pyoptsparse julia python=$pythonversion jupyter jupyterlab cyipopt
conda create -n fenicsx -c conda-forge fenics-dolfinx mpich pyvista python=$pythonversion jupyter jupyterlab
#conda create -n firedrake -c conda-forge mpich python=$pythonversion jupyter jupyterlab gcc gxx gfortran 

# Symbolic Regression Environment
conda create -n srbench -c conda-forge python=$pythonversion jupyter jupyterlab
conda activate srbench
conda install -c conda-forge shogun-cpp
conda install -c conda-forge fmt=9.1.0 
conda install -c conda-forge eigen 
conda install -c conda-forge armadillo gcc gxx
conda install -c conda-forge boost 
conda install -c conda-forge gsl 
conda install -c conda-forge py-xgboost 
conda install -c conda-forge mpi4py
#conda install -c conda-forge dcgp-python # dcgp

pip install Numpy Pandas Matplotlib scipy sympy statsmodels radian flake8 pylint yapf virtualenv jupyter_contrib_nbextensions nbconvert rich pygments scikit-learn DistanceClassifier pmlb eigency seaborn deap icecream
## pip3 install https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-1.14.0-py3-none-any.whl
## xgboost, randomforest, lgbm, adaboost
## HROCH feat ellyn pysr pstree bingo pyopern gplearn bayesr ffx
pip install HROCH ffx lightgbm  pysr pstree pyoperon gplearn git+https://github.com/ying531/MCMC-SymReg.git bingo-nasa 
pip install git+https://github.com/cavalab/feat.git 
pip install git+https://github.com/cavalab/ellyn.git

## GP-GOMEA
myenv
git clone https://github.com/marcovirgolin/GP-GOMEA.git
cd GP-GOMEA
make
## itea
myenv
git clone https://github.com/folivetti/ITEA.git
cd ITEA
source install_stack.sh
cd

## Geneticengine
pip install git+https://github.com/alcides/GeneticEngine.git

## QLattice
pip install feyn

## TaylorGP
pip install git+https://github.com/KGAE-CUP/TaylorGP.git

## E2ET
pip install git+https://github.com/pakamienny/sympytorch.git@rationals
pip install git+https://github.com/pakamienny/e2e_transformer.git

## EQL
### 从SRBENCH下载源码，然后安装，并安装jax或者torch

## nsga-dcgp
### 从SRBENCH下载源码，然后安装，并安装torch

## dc-gp
conda create -n dcgp -c conda-forge dcgp-python
conda deactivate

## Deep SR

conda create -n deepsr -c conda-forge python=3.7 jupyter jupyterlab tensorflow=1.14 mpich pylint
conda deactivate && conda activate deepsr
myenv
git clone https://github.com/brendenpetersen/deep-symbolic-optimization.git
cd deep-symbolic-optimization
pip install "./dso[all]"
#failure后再
conda install -c conda-forge mpi4py
pip install "./dso[all]"

#myenv
#if [ -d deep-symbolic-regression ] ; then
#    rm -rf deep-symbolic-regression
#fi
#git clone https://github.com/lacava/deep-symbolic-regression 
#cd deep-symbolic-regression
#pip install -r requirements.txt
# export CFLAGS="-I $(python -c "import numpy; print(numpy.get_include())") $CFLAGS" # Needed on Mac to prevent fatal error: 'numpy/arrayobject.h' file not found
#pip install ./dsr # Install DSR package
#cd

##pmlb
#myenv
#git clone https://github.com/EpistasisLab/pmlb.git
#cd pmlb
#git lfs pull
#cd
#conda deactivate

# Bioinformatics

curl -fsSL --proto '=https' https://nextstrain.org/cli/installer/linux | bash
nextstrain setup --set-default conda
nextstrain update conda

#conda create -n bioenv -c conda-forge -c bioconda python=3.10 jupyter jupyterlab augur auspice nextstrain-cli nextalign snakemake awscli
#conda activate bioenv
#conda install -c conda-forge nodejs
#npm install --global auspice
#pip install nextstrain-cli
#nextstrain check-setup --set-default
#conda deactivate


# PyMC
#conda create -c conda-forge -n pymc "pymc>=4" jupyter jupyterlab
#conda activate pymc
#pip install Numpy Pandas Matplotlib scipy sympy statsmodels radian flake8 pylint yapf virtualenv jupyter_contrib_nbextensions nbconvert
#conda deactivate
conda activate base
cd

conda activate
pip install --upgrade pip
pip install torch torchvision torchaudio
pip install -U "sktime[all_extras]"
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
pip install -U tensorflow
pip install Numpy Pandas Matplotlib scipy scikit-learn sympy statsmodels networkx  seaborn jupyter jupyterlab jupyter_contrib_nbextensions nbconvert\
  radian conan flake8 pylint huggingface-hub yapf virtualenv virtualenvwrapper-win rich pygments talk2stat isort\
  SAlib deepxde streamlit streamlit-pandas-profiling pandas-profiling plotly-express\
  tensorflow-probability gplearn gpflow\
  gpytorch botorch pytorch-forecasting neuralprophet torchdyn torchgan torchsde torchcde torchdiffeq torchmetrics pytorch-lightning  pyro-ppl\
  Casadi sbi pints elfi POT lifelines casadi Pulp lmfit pysindy pysr pydmd cvxpy probnum POT pylops pyproximal\
  pyomo gekko dymos leafmap optax flax numpyro distrax efax diffrax jaxopt sgmcmcjax gpjax blackjax pyvista
  
  
sudo npm install -g yarn
sudo npm install -g hexo

jupyter labextension install @jupyter-widgets/jupyterlab-manager keplergl-jupyter


# Symbolic Regression Environment
conda create -n sr python=3.10
conda activate sr
conda install -c conda-forge shogun-cpp
conda install -c conda-forge fmt=9.1.0 
conda install -c conda-forge eigen 
conda install -c conda-forge armadillo
conda install -c conda-forge boost 
conda install -c conda-forge gsl 
conda install -c conda-forge py-xgboost 
conda install -c conda-forge mpi4py

pip install Numpy Pandas Matplotlib scipy sympy statsmodels jupyter radian flake8 pylint yapf virtualenv rich pygments sklearn DistanceClassifier pmlb eigency seaborn deap icecream
## pip3 install https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-1.14.0-py3-none-any.whl
## xgboost, randomforest, lgbm, adaboost
## HROCH feat ellyn pysr pstree bingo pyopern gplearn bayesr ffx
pip install HROCH ffx lightgbm  pysr git+https://github.com/hengzhe-zhang/PS-Tree.git pyoperon gplearn git+https://github.com/ying531/MCMC-SymReg.git bingo-nasa
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
conda deactivate



# Symbolic Regression Benchmark Environment
conda create -n srbench python=3.6
conda activate srbench
conda install -c conda-forge eigen 
conda install -c conda-forge boost 
pip install DistanceClassifier
ln -s /home/aidishage/miniconda3/envs/srbench/lib/libpython3.6m.so.1.0 /home/aidishage/miniconda3/envs/srbench/lib/libpython3.so
pip install git+https://github.com/cavalab/ellyn.git

conda install -c conda-forge shogun-cpp
conda install -c conda-forge fmt=9.1.0 
conda install -c conda-forge armadillo
conda install -c conda-forge gsl 
conda install -c conda-forge py-xgboost 
conda install -c conda-forge mpi4py

pip install Numpy Pandas Matplotlib scipy sympy statsmodels jupyter radian flake8 pylint yapf virtualenv rich pygments sklearn DistanceClassifier pmlb eigency seaborn deap icecream
## pip3 install https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-1.14.0-py3-none-any.whl
## xgboost, randomforest, lgbm, adaboost
## HROCH feat ellyn pysr pstree bingo pyopern gplearn bayesr ffx
pip install HROCH ffx lightgbm  pysr git+https://github.com/hengzhe-zhang/PS-Tree.git pyoperon gplearn git+https://github.com/ying531/MCMC-SymReg.git bingo-nasa
pip install git+https://github.com/cavalab/feat.git 


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

## Deep SR
myenv
if [ -d deep-symbolic-regression ] ; then
    rm -rf deep-symbolic-regression
fi
git clone https://github.com/lacava/deep-symbolic-regression 
cd deep-symbolic-regression
pip install -r requirements.txt
# export CFLAGS="-I $(python -c "import numpy; print(numpy.get_include())") $CFLAGS" # Needed on Mac to prevent fatal error: 'numpy/arrayobject.h' file not found
pip install ./dsr # Install DSR package
cd

##pmlb
myenv
git clone https://github.com/EpistasisLab/pmlb.git
cd pmlb
git lfs pull
cd
conda deactivate






# PyMC
conda create -c conda-forge -n pymc "pymc>=4"
conda activate pymc
pip install Numpy Pandas Matplotlib scipy sympy statsmodels jupyter radian flake8 pylint yapf virtualenv
conda deactivate
cd

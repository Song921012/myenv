conda activate
pip install --upgrade pip
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
pip install -U "sktime[all_extras]"
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
pip install -U tensorflow
pip install Numpy Pandas Matplotlib scipy scikit-learn sympy statsmodels networkx  seaborn jupyter jupyterlab jupyter_contrib_nbextensions nbconvert\
  radian conan flake8 pylint huggingface-hub yapf virtualenv virtualenvwrapper-win rich pygments talk2stat isort\
  SAlib deepxde streamlit streamlit-pandas-profiling pandas-profiling plotly-express\
  tensorflow-probability gplearn gpflow\
  gpytorch botorch pytorch-forecasting neuralprophet torchdyn torchgan torchsde torchcde torchdiffeq torchmetrics pytorch-lightning  pyro-ppl\
  Casadi sbi pints elfi POT lifelines casadi Pulp lmfit pysindy pysr pydmd cvxpy probnum POT pylops pyproximal\
  pyomo gekko dymos leafmap optax flax numpyro distrax efax mpi4jax diffrax jaxopt sgmcmcjax gpjax blackjax pyvista
  
pip install -U pyecharts seaborn plotly dash 

pip install keplergl osmnx
  
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-countries-pypkg

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-provinces-pypkg

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-cities-pypkg

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-counties-pypkg

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-misc-pypkg

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-united-kingdom-pypkg

pip install pyecharts_snapshot
  
sudo npm install -g yarn
sudo npm install -g hexo

jupyter labextension install @jupyter-widgets/jupyterlab-manager keplergl-jupyter

conda create -n sr
conda activate sr
conda install -c conda-forge fmt=9.1.0 python=3.10.6 eigen boost shogun-cpp armaddilo boost gsl
pip install Numpy Pandas Matplotlib scipy sympy statsmodels jupyter radian flake8 pylint yapf virtualenv rich pygments sklearn DistanceClassifier pmlb eigency
## HROCH feat ellyn pysr pstree bingo pyopern gplearn bayesr ffx
pip install HROCH ffx git+https://github.com/cavalab/feat.git git+https://github.com/cavalab/ellyn.git pysr pstree pyoperon gplearn git+https://github.com/ying531/MCMC-SymReg.git 

## deep symbolic regression
#pip install --upgrade setuptools pip
#export CFLAGS="-I $(python -c "import numpy; print(numpy.get_include())") $CFLAGS"
#pip install git+https://github.com/brendenpetersen/deep-symbolic-optimization.git#subdirectory=dso

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

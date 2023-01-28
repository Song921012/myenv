# Linux python
conda deactivate
conda deactivate
#pip install  Numpy Pandas Matplotlib scipy scikit-learn sympy statsmodels networkx seaborn jupyter jupyterlab radian conan flake8 pylint  yapf virtualenv 

# Base python
conda activate base
pip install --upgrade pip
pip install Numpy Pandas Matplotlib scipy scikit-learn sympy statsmodels networkx  virtualenv virtualenvwrapper-win rich pygments talk2stat isort\

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-countries-pypkg

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-provinces-pypkg

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-cities-pypkg

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-counties-pypkg

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-misc-pypkg

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-united-kingdom-pypkg
  

pip install -U radian conan flake8 pylint yapf huggingface-hub\
  SAlib deepxde streamlit plotly-express\
  tensorflow tensorflow-probability gplearn gpflow\
  gpytorch botorch pytorch-forecasting neuralprophet torchdyn torchgan torchsde torchcde torchdiffeq torchmetrics torchopt pytorch-lightning  pyro-ppl\
  Casadi sbi pints elfi POT lifelines Pulp pysindy pykoopman pykoop mosek cvxopt smcp pysr pmlb HROCH pyoperon pydmd cvxpy probnum POT pylops pyproximal abcpy pyabc\
  pyomo gekko dymos leafmap darts pydeck nlopt optax flax numpyro jaxns 
  funsor ott distrax neural-tangents efax dm-haiku pyMetaheuristic 
  diffrax jaxopt evosax sgmcmcjax gpjax blackjax pyecharts plotly dash 
  "sktime[all_extras]" nodepy seaborn keplergl osmnx pyecharts_snapshot 
  biopython mesa quadpy scalene emcee casadi-horizon bayesnewton objax
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
pip install -U torch --extra-index-url https://download.pytorch.org/whl/cu116
pip install -U torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
pip install -U git+https://github.com/probml/dynamax.git

# install abm framework from [FLAMEGPU/FLAMEGPU2: FLAME GPU 2 is a GPU accelerated agent based modelling framework for C++ and Python](https://github.com/FLAMEGPU/FLAMEGPU2)



# PyMC python

conda deactivate
conda activate pymc
conda update --all
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
pip install -U numpyro blackjax
conda deactivate
conda activate base



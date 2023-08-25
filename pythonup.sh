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
  
# 
pip install -U radian conan flake8 pylint yapf huggingface-hub\
  SAlib deepxde streamlit plotly-express\
  tensorflow gplearn gpflow\
  pyecharts plotly dash nodepy seaborn keplergl\
  biopython mesa 
## inference and optimization
pip install -U Casadi pints elfi POT lifelines Pulp pysindy pykoopman pykoop\
 mosek cvxopt smcp pysr pmlb HROCH pyoperon pydmd cvxpy probnum POT pylops pyproximal abcpy pyabc\
  pyomo gekko dymos leafmap darts pydeck nlopt \
   dm-haiku pyMetaheuristic emcee quadpy scalene casadi-horizon bayesnewton ruptures
## torch
pip install -U gpytorch botorch torchgan torchdiffeq \
 torchmetrics torchopt pytorch-lightning  pyro-ppl sbi storchastic
#pip install -U pytorch-forecasting neuralprophet
#pip install torchsde torchcde torchdyn
## jax
pip install -U objax diffrax jaxopt evosax sgmcmcjax gpjax blackjax optax \
 flax numpyro jaxns funsor ott neural-tangents efax probdiffeq
 
#pip install -U objax torchsde tensorflow-probability

pip install lineax
 
#pip install distrax 

pip install osmnx pyecharts_snapshot
pip install -U "sktime[all_extras]"
#pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
pip install --upgrade "jax[cuda12_pip]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
# Installs the wheel compatible with Cuda >= 11.4 and cudnn >= 8.2
#conda install jax cuda-nvcc -c conda-forge -c nvidia
#pip install -U "jax[cuda11_cudnn82]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
#conda install pytorch torchvision torchaudio pytorch-cuda=11.7 -c pytorch -c nvidia
#pip install -U torch torchvision torchaudio
#pip install -U torch --extra-index-url https://download.pytorch.org/whl/cu116
#pip install -U torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
#pip3 install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu121
pip install -U dynamax

# install abm framework from [FLAMEGPU/FLAMEGPU2: FLAME GPU 2 is a GPU accelerated agent based modelling framework for C++ and Python](https://github.com/FLAMEGPU/FLAMEGPU2)



# PyMC python

#conda deactivate
#conda activate pymc
#conda update --all
#pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
#pip install -U numpyro blackjax
#conda deactivate
conda activate base



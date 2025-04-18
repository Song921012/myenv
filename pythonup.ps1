# Linux python
echo "python update"
conda deactivate
conda deactivate
#pip install  Numpy Pandas Matplotlib scipy scikit-learn sympy statsmodels networkx seaborn jupyter jupyterlab radian conan flake8 pylint  yapf virtualenv 

# Base python
conda activate base
python -m pip install --upgrade pip

pip install Numpy Pandas Matplotlib scipy scikit-learn sympy statsmodels networkx  virtualenv virtualenvwrapper-win rich pygments talk2stat isort

#pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-countries-pypkg

# pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-provinces-pypkg

# pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-cities-pypkg

# pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-counties-pypkg

# pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-china-misc-pypkg

# pip install -i https://pypi.tuna.tsinghua.edu.cn/simple echarts-united-kingdom-pypkg
  
# 
pip install -U radian conan flake8 pylint yapf huggingface-hub deepxde streamlit plotly-express  plotly dash seaborn
# pip install SAlib tensorflow tensorflow-probability gplearn gpflow pyecharts nodepy
## inference and optimization

#pip install -U Casadi pints elfi POT lifelines Pulp pysindy pykoopman pykoop mosek cvxopt pysr pmlb HROCH pydmd cvxpy probnum POT pyomo gekko dymos

## torch
#pip install -U gpytorch botorch  torchgan torchdiffeq torchmetrics torchopt pytorch-lightning  pyro-ppl sbi storchastic

#pip install torchsde torchcde torchdyn

#pip install osmnx pyecharts_snapshot

pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124

pip install -U "jax[cuda12]"

conda activate base

echo "python update done"



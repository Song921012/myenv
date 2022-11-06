conda deactivate
conda activate base
pip install --upgrade pip
pip install -U radian conan flake8 pylint yapf\
  SAlib deepxde streamlit plotly-express\
  tensorflow tensorflow-probability gplearn gpflow\
  gpytorch botorch pytorch-forecasting neuralprophet torchdyn torchgan torchsde torchcde torchdiffeq torchmetrics pytorch-lightning  pyro-ppl\
  Casadi sbi pints elfi POT lifelines Pulp pysindy pykoopman pykoop mosek cvxopt smcp pysr pmlb HROCH pyoperon pydmd cvxpy probnum POT pylops pyproximal abcpy pyabc\
  pyomo gekko dymos leafmap darts pydeck nlopt optax flax numpyro jaxns funsor ott distrax neural-tangents efax pyMetaheuristic diffrax jaxopt evosax sgmcmcjax gpjax blackjax pyecharts plotly dash sklearn "sktime[all_extras]"
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
pip install -U torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
pip install git+https://github.com/probml/dynamax.git

conda deactivate
conda activate pymc
conda update --all
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
pip install -U numpyro blackjax
conda deactivate
conda activate base



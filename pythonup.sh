conda deactivate
conda activate base
pip install -U radian conan flake8 pylint yapf\
  SAlib deepxde streamlit plotly-express\
  tensorflow-probability gplearn gpflow\
  gpytorch botorch pytorch-forecasting neuralprophet torchdyn torchode torchgan torchsde torchcde torchdiffeq torchmetrics pytorch-lightning  pyro-ppl\
  Casadi sbi pints elfi POT lifelines Pulp pysindy pykoopman pysr pmlb HROCH pyoperon pydmd cvxpy probnum POT pylops pyproximal abcpy pyabc\
  pyomo gekko dymos leafmap darts pydeck nlopt optax flax numpyro jaxns funsor ott distrax efax diffrax jaxopt sgmcmcjax gpjax blackjax pyecharts plotly dash sklearn
pip install -U "sktime[all_extras]"
pip install --upgrade pip
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
pip install -U tensorflow
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116


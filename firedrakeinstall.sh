# Install
cd
rm -rf firedrake*
curl -O https://raw.githubusercontent.com/firedrakeproject/firedrake/master/scripts/firedrake-install
conda deactivate
unset PYTHONPATH
#unset SLEPC_DIR
#unset PETSC_DIR
#unset PETSC_ARCH
#pip uninstall torch jax dolfin-adjint moola fecr jax-fenics-adjoint cashocs "meshio[all]" gmsh pyvista

python3 firedrake-install --slepc --disable-ssh --no-package-manager

##learn to debug and revise the firedrake-install files
# Install other packages
fireenv
unset PYTHONPATH
#unset SLEPC_DIR
#unset PETSC_DIR
#unset PETSC_ARCH
firedrake-update --pip-install git+https://github.com/IvanYashchuk/fecr@master --pip-install jax --pip-install jaxlib --pip-install git+https://github.com/IvanYashchuk/jax-fenics-adjoint.git@master --pip-install git+https://github.com/IvanYashchuk/firedrake-ts.git@master --pip-install git+https://bitbucket.org/pefarrell/defcon.git

pip install pyvista meshio gmsh
pip3 install --no-cache-dir roltrilinos
pip3 install --no-cache-dir ROL
pip3 install git+https://github.com/fireshape/fireshape.git
cd
deactivate
source ~/.zshrc


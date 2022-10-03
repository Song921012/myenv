cd
firedrakeup(){
fireenv;
unset PYTHONPATH;
unset SLEPC_DIR;
unset PETSC_DIR;
unset PETSC_ARCH;
firedrake-update;
deactivate;
source ~/.zshrc;
cd;
}
fireinstall(){
fireenv;
unset PYTHONPATH;
unset SLEPC_DIR;
unset PETSC_DIR;
unset PETSC_ARCH;
firedrake-update --pip-install $1;
deactivate;
source ~/.zshrc;
cd;
}


cd
firedrakeup(){
fireenv;
unset PYTHONPATH;
unset SLEPC_DIR;
unset PETSC_DIR;
unset PETSC_ARCH;
firedrake-update
cd
}

firedrakeinstall(){
fireenv;
unset PYTHONPATH;
unset SLEPC_DIR;
unset PETSC_DIR;
unset PETSC_ARCH;
firedrake-update --pip-install $1
cd
}


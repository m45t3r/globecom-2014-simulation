#!/bin/bash

PIP_CACHE='.pipcache'

# source spawns on the current shell and exits, so we need this workaround
# http://stackoverflow.com/a/13122219
activate() {
	source env/bin/activate
}

# INSTAL DEPENDENCIES
sudo pacman -Syy
sudo pacman -S --noconfirm base-devel blas lapack gcc-fortran glpk
sudo pacman -S --noconfirm python2 python2-pip python2-virtualenv

# CREATE VIRTUAL ENV
virtualenv2 env && activate

# PYTHON PIP PACKAGES
mkdir "${PIP_CACHE}"
pip install --download-cache "${PIP_CACHE}" numpy==1.9.0
pip install --download-cache "${PIP_CACHE}" FuncDesigner==0.5402
pip install --download-cache "${PIP_CACHE}" openopt==0.5402
pip install --download-cache "${PIP_CACHE}" matplotlib==1.4.0
pip install --download-cache "${PIP_CACHE}" inspyred==1.0
export CVXOPT_BUILD_GLPK=1 && pip install --download-cache "${PIP_CACHE}" cvxopt==1.1.7

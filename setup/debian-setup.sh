#!/bin/bash

set -e

# INSTAL DEPENDENCIES
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get install --yes build-essential libblas-dev liblapack-dev gfortran libglpk-dev libpng-dev libfreetype6-dev
sudo apt-get install --yes python python-dev python-pip python-virtualenv

source python-setup.sh

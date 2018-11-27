#!/bin/bash
# Python packages installation
# K.Toompea M.Ogeret

source $HOME/anaconda/bin/activate
export PYTHONPATH=:/home/vagrant/models/research:/home/vagrant/models/research/slim:/home/vagrant/models/research:/home/vagrant/models/research/slim

$HOME/anaconda/bin/pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.12.0-cp36-cp36m-linux_x86_64.whl
$HOME/anaconda/bin/pip install tensorflow

# Updating pandas and matplotlib
$HOME/anaconda/bin/pip install -U pandas
$HOME/anaconda/bin/pip install -U matplotlib 

# Installing Git and tensorflow models
sudo apt-get install -y git
cd ~
git clone https://github.com/tensorflow/models.git

$HOME/anaconda/bin/python $HOME/models/research/setup.py install
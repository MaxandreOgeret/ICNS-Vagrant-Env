#!/bin/bash
# Python and conda aliases
# K.Toompea M.Ogeret

source $HOME/anaconda/bin/activate
export PYTHONPATH=:/home/vagrant/models/research:/home/vagrant/models/research/slim:/home/vagrant/models/research:/home/vagrant/models/research/slim

echo "Exporting and sourcing Anaconda ..."
export PATH="$HOME/anaconda/bin:$PATH"
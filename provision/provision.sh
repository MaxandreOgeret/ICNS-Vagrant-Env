#!/bin/bash
# Provision script for the ICNS Self driving project
# K.Toompea M.Ogeret
# wget https://repo.anaconda.com/archive/Anaconda3-5.3.1-Linux-x86_64.sh

FILE="Anaconda3-5.2.0-Linux-x86_64.sh"

# Change to temp directory
cd /installer

if [ ! -f $FILE ]; then
  echo "Downloading Anaconda ..."
  # Download file using wget
  wget --progress=bar:force https://repo.anaconda.com/archive/$FILE
else
  echo "Anaconda install file already downloaded."
fi

# Execute the file and set the bin folder in env
echo "Installing Anaconda ..."
bash $FILE -b -p $HOME/anaconda

# Updating pip
$HOME/anaconda/bin/pip install --upgrade pip

# Creating Anaconda aliases in bashrc file 
echo "alias python='$HOME/anaconda/bin/python'" >> /home/vagrant/.bashrc
echo "alias conda='$HOME/anaconda/bin/conda'" >> /home/vagrant/.bashrc
echo "alias pip='$HOME/anaconda/bin/pip'" >> /home/vagrant/.bashrc
#echo "source $HOME/anaconda/bin/activate" >> /home/vagrant/.bashrc
echo "export PYTHONPATH=:/home/vagrant/models/research:/home/vagrant/models/research/slim:/home/vagrant/models/research:/home/vagrant/models/research/slim" >> /home/vagrant/.bashrc


# Installing Git and tensorflow models
sudo apt-get install -y git
cd ~
git clone https://github.com/tensorflow/models.git
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  # Official boxes are here: https://atlas.hashicorp.com/boxes/search
  # Additional boxes here: http://www.vagrantbox.es/
  config.vm.box = "ubuntu/trusty64"
  #config.vm.box = "hashicorp/precise64"

  # You can shell scripts when `vagrant up` or `vagrant provision` is run.
  # Just put scripts in the same directory as this `Vagrantfile`.
  #config.vm.provision "shell", privileged: false, path: "vagrant-bootstrap.sh"
  # You can do multiple scripts, if you want:
  config.vm.provision "shell", privileged: false, path: "provision/provision.sh"
  config.vm.provision "shell", privileged: false, path: "provision/packages.sh"
  config.vm.provision "shell", privileged: false, path: "provision/startup.sh", run: 'always'

  # Port forwarding examples
  # Just in case you need to run a database server, web server, etc.
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 80, host: 80
  #config.vm.network "forwarded_port", guest: 35357, host: 35357

  # Mem/cpu config example.
  # If you need more CPUs/RAM, uncomment the next 4 lines and edit as needed.
  #config.vm.provider "virtualbox" do |v|
  #  v.memory = 1024
  #  v.cpus = 2
  #end

  # Shared folders:
  #
  # Setting the workspace to the current dir allows you to do editing/
  # development on host environment (OSX, etc.) and then actually run/
  # test things inside the virtual environvment.
  # You can map multiple folders in this way.
  # In this case, the ".", "/workspace" indicates that we want to map
  # the current directory on the host machine to the "/workspace" directory
  # on the guest/VM.
  config.vm.synced_folder "./installer", "/installer"
  config.vm.synced_folder "./learning", "/learning"

end
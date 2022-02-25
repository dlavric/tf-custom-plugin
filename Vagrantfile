# configure Vagrant

Vagrant.configure("2") do |config|
    config.vm.provider "virtualbox"
    config.vm.box = "hashicorp/bionic64"
    config.vm.provision "shell", path: "scripts/golang.sh"
    config.vm.provision "shell", path: "scripts/install_terraform.sh"
    config.vm.provision "shell", path: "scripts/build_go.sh"
  end
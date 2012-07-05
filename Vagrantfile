# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :hostonly, "10.0.2.0"
  config.vm.share_folder "v-root", "/srv/share", "."
  config.vm.customize ["modifyvm", :id, "--memory", 1024]
  config.vm.provision :shell, :inline => "apt-get update"
  config.vm.provision :shell, :inline => "apt-get -y install git build-essential python curl unzip"
  config.vm.provision :shell, :inline => "cd /home/vagrant"
  config.vm.provision :shell, :inline => "git clone git://www.github.com/woce/woce-build"
  config.vm.provision :shell, :inline => "curl -O https://raw.github.com/woce/woce-be/master/build.sh"
  config.vm.provision :shell, :inline => "chmod +x ./build.sh"
  config.vm.provision :shell, :inline => "chown -R vagrant woce-build"
  config.vm.provision :shell, :inline => "chown vagrant build.sh"
  config.vm.provision :shell, :inline => "mkdir -p /srv/downloads /srv/doctors"
  config.vm.provision :shell, :inline => "chown -R vagrant /srv/downloads"
  config.vm.provision :shell, :inline => "chown -R vagrant /srv/doctors"
  config.vm.provision :shell, :inline => "rm postinstall.sh"
end

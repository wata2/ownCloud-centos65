Vagrant.configure("2") do |config|
  config.vm.hostname = "ownCloudEnv"
  config.vm.box = "centos65-x86_64-20140116"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
  config.vm.network :private_network, ip: "192.168.55.56"
  config.vm.synced_folder "./syncFiles", "/vagrant", create:true
  config.vm.provision "shell", path: "setup.sh"
end
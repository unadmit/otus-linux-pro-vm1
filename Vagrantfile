Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "otus-linux-pro-vm1"
  config.vm.provision "shell", path: "script.sh"
  config.vm.provision "shell", reboot: true
  config.vm.provision "shell", inline: <<-SHELL
    uname -msr
  SHELL
end
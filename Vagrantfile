Vagrant.configure("2") do |config|
  config.vm.provider "hyperv" do |hv|
     hv.memory = "1024"
  end
  config.vm.network "public_network"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook.yml"
  end
end

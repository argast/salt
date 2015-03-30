Vagrant.configure("2") do |config|
	config.vm.box = "ubuntu/trusty64"

	config.vm.define "master" do |master|

		master.vm.hostname = "master"
		master.vm.network "private_network", ip: "192.168.0.101"

		master.vm.provision :shell,
			inline: "sudo apt-get update && sudo apt-get -y install python-git"

		master.vm.provision :salt do |salt|
			salt.master_config = "config/master"
			salt.install_master = true
			salt.install_type = "stable"
			salt.no_minion = true
		end
	end

	config.vm.define "minion1" do |minion|

		minion.vm.hostname = "minion1"
		minion.vm.network "private_network", ip: "192.168.0.102"

		minion.vm.provision :salt do |salt|
			salt.minion_config = "config/minion"
		end
	end

	config.vm.define "minion2" do |minion|

		minion.vm.hostname = "minion2"
		minion.vm.network "private_network", ip: "192.168.0.103"

		minion.vm.provision :salt do |salt|
			salt.minion_config = "config/minion"
		end
	end
	
end
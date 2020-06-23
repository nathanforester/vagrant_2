

Vagrant.configure("2") do |config|

	# puts.config
	# our python ebooks will load here because it will be similar to the testing environment
	config.vm.box = "ubuntu/xenial64"
# the reserve proxy will give me entry into my run machine
	config.vm.network "private network", ip: "192.168.10.100"
# Asking developer to go to an ip is not user friendly
# let's give them a host with letters for them to access and view their software
# you need to install a vagrant plugin: vagrant-hostsupdater
# development.local 
config.hostsupdater.aliases = ("developement.local")
end
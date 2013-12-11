Vagrant.configure("2") do |config|  
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
 
  config.vm.define :LB0 do |lb| 
    lb.vm.hostname = "Load Balancer"
    lb.vm.network :private_network, ip: "192.168.10.10"    
	  lb.vm.provision :shell, :path => "bootstrapLB0.sh"
    lb.provision_as_role :LB0
  end
  
  config.vm.define :srv1 do |srvp|
    srvp.vm.box = "apache1"
    srvp.vm.network :private_network, ip: "192.168.10.11"  
	 srvp.vm.provision :shell, :path => "bootstrapSRV1.sh"
    srvp.provision_as_role :srv1	
 end
 
   config.vm.define :srv2 do |srvs|
    srvs.vm.box = "apache1"
    srvs.vm.network :private_network, ip: "192.168.10.12"  
	 srvs.vm.provision :shell, :path => "bootstrapSRV2.sh"
    srvs.provision_as_role :srv2	
 end
 
end

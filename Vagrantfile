Vagrant.configure("2") do |config|  
  config.vm.box = "Test"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
 
  config.vm.define :LB do |lb| 
    lb.vm.hostname = "LB0"
    lb.vm.network :private_network, ip: "192.168.10.10"    
	lb.vm.provision :shell, :path => "bootstrapLB0.sh"
   
  end
  
  config.vm.define :srvp do |srvp|
    srvp.vm.hostname = "SRV1"
    srvp.vm.network :private_network, ip: "192.168.10.11"  
	 srvp.vm.provision :shell, :path => "bootstrapSRV1.sh"
  
 end
 
   config.vm.define :srvs do |srvs|
    srvs.vm.hostname = "SRV2"
    srvs.vm.network :private_network, ip: "192.168.10.12"  
 	srvs.vm.provision :shell, :path => "bootstrapSRV2.sh"
 end
 
end

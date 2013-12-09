Vagrant::Config.run do |config|

  config.vm.define "LB0" do |web|
    web.vm.box = "Load Balancer"
    config.vm.box_url = "http://files.vagrantup.com/precise32.box"
    config.vm.provision :shell, :path => "bootstrapLB0.sh"
    config.vm.network :hostonly, "192.168.10.10" 
 end
config.vm.define "SRV1" do |web|
    web.vm.box = "apache1"
    config.vm.box_url = "http://files.vagrantup.com/precise32.box"
    config.vm.provision :shell, :path => "bootstrapSRV1.sh"
    config.vm.network :hostonly, "192.168.10.11" 
 end
  
end

Vagrant::Config.run do |config|

  config.vm.define "LB0" do |LB0|
    LB0.vm.box = "Load Balancer"
    LB0.vm.box_url = "http://files.vagrantup.com/precise32.box"
    LB0.vm.provision :shell, :path => "bootstrapLB0.sh"
    LB0.vm.network :hostonly, "192.168.10.10" 
 end
config.vm.define "SRV1" do |SRV1|
    SRV1.vm.box = "apache1"
    SRV1.vm.box_url = "http://files.vagrantup.com/precise32.box"
    SRV1.vm.provision :shell, :path => "bootstrapSRV1.sh"
    SRV1.vm.network :hostonly, "192.168.10.11" 
 end
  
end

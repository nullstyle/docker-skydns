Vagrant.configure("2") do |config|

  config.vm.box = "saucy64"
  

  config.vm.provision "docker" do |d|
    d.pull_images "stackbrew/ubuntu"
  end

  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = true
  end
  
end
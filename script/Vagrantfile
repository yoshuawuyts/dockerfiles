Vagrant.configure("2") do |config|

  #
  # 'Base' instance.
  #

  config.vm.define "base" do |vagrant|
    vagrant.vm.provider "docker" do |docker|
      docker.build_dir = "./base"
      docker.remains_running = false
      #docker.volumes = ["~/"]
      docker.ports = ["80:80", "443:443"]
    end
  end

  #
  # 'Node' instance.
  #

  config.vm.define "node" do |vagrant|
    vagrant.vm.provider "docker" do |docker|
      docker.build_dir = "./node"
      docker.remains_running = false
      docker.ports = ["80:80", "443:443"]
    end
  end
end

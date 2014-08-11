Vagrant.configure("2") do |config|

  #
  # 'App' instance.
  #

  config.vm.define "app" do |v|
    v.vm.provider "docker" do |d|
      d.build_dir = "./"
      d.remains_running = false
      #d.volumes = ["~/"]
      d.ports = ["80:80", "443:443"]
    end
  end
end

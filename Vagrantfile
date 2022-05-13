Vagrant.configure('2') do |config|
  config.vm.hostname = 'ubuntu-22.04'
  config.vm.box = 'alvistack/ubuntu-22.04'

  config.vm.provider :libvirt do |libvirt|
    libvirt.cpu_mode = 'host-passthrough'
    libvirt.cpus = 2
    libvirt.disk_bus = 'virtio'
    libvirt.disk_driver :cache => 'writeback'
    libvirt.driver = 'kvm'
    libvirt.memory = 8192
    libvirt.memorybacking :access, :mode => 'shared'
    libvirt.nested = true
    libvirt.nic_model_type = 'virtio'
    libvirt.storage :file, bus: 'virtio', cache: 'writeback'
    libvirt.video_type = 'virtio'
  end

  config.vm.provider :virtualbox do |virtualbox|
    config.vm.disk :disk, name: 'sdb', size: '10GB'
    virtualbox.cpus = 2
    virtualbox.customize ['modifyvm', :id, '--cpu-profile', 'host']
    virtualbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
    virtualbox.memory = 8192
  end
end

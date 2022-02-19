Vagrant.configure("2") do |config|
  # Install Virtualbox plugins for Guest Additions and Disk resize
  config.vagrant.plugins = ["vagrant-vbguest"]
  #config.vbguest.installer_arguments = ["--with-autologon"]
  #config.vbguest.iso_path = "https://download.virtualbox.org/virtualbox/6.1.32/VBoxGuestAdditions_6.1.32.iso"
  config.vbguest.no_remote = true
  config.vbguest.auto_update = false
  # Use Ubuntu 21.10 Bento Box
  config.vm.box = "bento/ubuntu-21.10"
  # Set hostname
  config.vm.hostname = "sw4iot"
  # Configure Virtualbox VM
  config.vm.provider "virtualbox" do |vb|
    # Enable GUI
    vb.gui = true
    # Set default name for all vms
    vb.name = "sw4iot"
    # Give the machine a bit more memory
    vb.memory = "2048"
    # Enable clipboard
    vb.customize ["modifyvm", :id, "--clipboard-mode", "bidirectional"]
    # Set the VboxVGA graphics controller
    vb.customize ['modifyvm', :id, '--graphicscontroller', 'vmsvga']
    # Increase video memory for enhanced screen resolution
    vb.customize ["modifyvm", :id, "--vram", "128"]
    # Remember resolution
    vb.customize ["setextradata", :id, "GUI/LastGuestSizeHint"]
    # Scale display by a factor of 2 (less pixel density)
    vb.customize ["setextradata", :id, "GUI/ScaleFactor", "2"]
    # Enable USB 2.0 & 3.0 controllers (USB EHCI & XHCI)
    vb.customize ["modifyvm", :id, "--usbehci", "on", "--usbxhci", "on"]
  end
  # Update Ubuntu
  config.vm.provision "shell", path: "scripts/update_linux.sh"
  # Install and configure XFCE4
  config.vm.provision "shell", path: "scripts/install_xfce4.sh"
  config.vm.provision "shell" do |shell|
    # Install required tools
    shell.path = "scripts/setup_iot.sh"
    # Rebooting the machine after changes
    shell.reboot = true
  end
end
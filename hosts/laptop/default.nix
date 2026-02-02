{ ... }:
{
  imports = [
    ./hardware.nix
    ./drivers
    ../../modules/core
  ];
  # Enable GPU Drivers
  drivers.nvidia.enable = true;
  drivers.nvidia-prime = {
    enable = true;
    intelBusID = "PCI:1:0:0";
    nvidiaBusID = "PCI:0:2:0";
  };
}

{ config, ... }:

{
  hardware.graphics.enable = true;

  boot.initrd.kernelModules = [
    "amdgpu"
  ];

  services.xserver.videoDrivers = [
    "nvidia"
  ];

  hardware.nvidia = {
    modesetting.enable = true;

    open = true;

    nvidiaSettings = false;

    package = config.boot.kernelPackages.nvidiaPackages.stable;

    powerManagement = {
      enable = true;
      finegrained = true;
    };

    prime = {
      # 73:00.0 = Radeon 680M
      # 01:00.0 = RTX 3050
      amdgpuBusId = "PCI:115:0:0";
      nvidiaBusId = "PCI:1:0:0";

      offload = {
        enable = true;
        enableOffloadCmd = true;
      };
    };
  };
}

{ lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./graphics.nix
    ./networking.nix
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "nvidia-x11"
    ];

  networking.hostName = "tobias";

  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";

  console = {
    keyMap = "us";
    font = "Lat2-Terminus16";
  };

  fonts.package = [
    pkgs.terminus_font_ttf
  ];

  networking.firewall.enable = true;

  users.users.andreas = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

  security.sudo.wheelNeedsPassword = true;
  security.rtkit.enable = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  programs.sway = {
    enable = true;
    xwayland.enable = true;
    extraPackages = [ ];
  };

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };

  hardware.enableRedistributableFirmware = true;

  services.power-profiles-daemon.enable = true;

  services.logind.settings.Login = {
    HandleLidSwitch = "suspend";
    HandleLidSwitchDocked = "ignore";
  };

  hardware.bluetooth = {
  enable = true;
  powerOnBoot = true;
  };

  system.stateVersion = "26.05";
}

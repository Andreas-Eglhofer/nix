{ pkgs, ... }:

{
  home.packages = [
    pkgs.imv
  ];

  xdg.mimeApps.defaultApplications = {
    "image/png" = [ "imv.desktop" ];
    "image/jpeg" = [ "imv.desktop" ];
    "image/webp" = [ "imv.desktop" ];
    "image/gif" = [ "imv.desktop" ];
  };
}

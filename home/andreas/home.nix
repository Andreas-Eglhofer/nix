{ pkgs, ...}:

{
  
  imports = [
    ./desktop/sway
    ./desktop/foot
    ./desktop/swaylock
    ./desktop/swayidle
    ./bash
    ./git
    ./nvim
    ./firefox
    ./zathura
    ./imv
    ./scripts
    ./latex
    ./kicad
    ./code_languages
    ./tio
  ];

  home.username = "andreas";
  home.homeDirectory = "/home/andreas";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    brightnessctl
    playerctl
    wireplumber
    wl-clipboard

    
    ripgrep
    fd
    jq
    unzip
    xournalpp
  ];
}

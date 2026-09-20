{ ... }:

{
  home.file = {
    ".local/bin/check-nix" = {
      source = ./check-nix;
      executable = true;
    };

    ".local/bin/clean-nix" = {
      source = ./clean-nix;
      executable = true;
    };

    ".local/bin/mit-secure" = {
      source = ./mit-secure;
      executable = true;
    };

    ".local/bin/nvidia-run" = {
      source = ./nvidia-run;
      executable = true;
    };

    ".local/bin/rebuild" = {
      source = ./rebuild;
      executable = true;
    };

    ".local/bin/update-nix" = {
      source = ./update-nix;
      executable = true;
    };
  };

  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}

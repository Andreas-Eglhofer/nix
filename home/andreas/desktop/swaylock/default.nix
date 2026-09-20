{ ... }:

{
  programs.swaylock = {
    enable = true;

    settings = {
      color = "000000";
      indicator = true;
      show-failed-attempts = true;
    };
  };
}

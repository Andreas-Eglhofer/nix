{ ... }:

{
  programs.foot = {
    enable = true;

    settings = {
      main = {
        font = "monospace:size=11";
        pad = "0x0";
      };

      scrollback = {
        lines = 10000;
      };

      colors = {
        background = "000000";
        foreground = "aaaaaa";
      };
    };
  };
}

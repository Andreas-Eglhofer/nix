{ ... }:

{
programs.foot = {
enable = true;

settings = {
  main = {
    pad = "2x2";
  };

  scrollback = {
    lines = 10000;
  };

  cursor = {
    style = "block";
    blink = "no";
  };

  csd = {
    preferred = "none";
  };

  colors = {
    background = "000000";
    foreground = "aaaaaa";

    regular0 = "000000";
    regular1 = "aa0000";
    regular2 = "00aa00";
    regular3 = "aa5500";
    regular4 = "0000aa";
    regular5 = "aa00aa";
    regular6 = "00aaaa";
    regular7 = "aaaaaa";

    bright0 = "555555";
    bright1 = "ff5555";
    bright2 = "55ff55";
    bright3 = "ffff55";
    bright4 = "5555ff";
    bright5 = "ff55ff";
    bright6 = "55ffff";
    bright7 = "ffffff";
  };
};


};
}

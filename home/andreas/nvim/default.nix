{ ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    initLua = builtins.readFile ./init.lua;
  };
}

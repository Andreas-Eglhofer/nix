{ config, pkgs, ... }:

let
tex = pkgs.texliveBasic.withPackages (ps: with ps; [
latexmk

amscls
amsmath
amsfonts
mathtools

tools
siunitx
physics
esint

pgf
tikz-3dplot
pgfplots
ec
cm-super

geometry
enumitem
fancyhdr
needspace
hyperref

]);
in
{
home.packages = [
tex
];

home.file = {
  "texmf/tex/latex/druzz/druzz-hw.cls".source =
    config.lib.file.mkOutOfStoreSymlink
      "/home/andreas/Code/personal/nix/home/andreas/latex/classes/druzz-hw.cls";

  "texmf/tex/latex/druzz/druzz.sty".source =
    config.lib.file.mkOutOfStoreSymlink
      "/home/andreas/Code/personal/nix/home/andreas/latex/packages/druzz.sty";
};
}

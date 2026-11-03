{ config, pkgs, ... }:

let
tex = pkgs.texliveBasic.withPackages (ps: with ps; [
  # Build tools
  latexmk

  # Mathematics and physics
  amscls
  amsmath
  amsfonts
  mathtools
  tools
  siunitx
  physics
  esint

  # Graphics
  pgf
  tikz-3dplot
  pgfplots
  xcolor

  # Fonts
  ec
  cm-super
  lm
  cfr-lm
  nfssext-cfr
  marvosym
  fontawesome5

  # Layout and formatting
  geometry
  enumitem
  fancyhdr
  needspace
  hyperref
  float
  ragged2e
  preprint
  wrapfig
  lipsum
  titlesec
  tcolorbox
  environ
  etoolbox
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

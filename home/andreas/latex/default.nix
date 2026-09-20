{ pkgs, ... }:

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
./classes/druzz-hw.cls;

"texmf/tex/latex/druzz/druzz.sty".source =
  ./packages/druzz.sty;

};
}

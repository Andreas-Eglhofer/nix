{ pkgs, ... }:

{
  home.packages = with pkgs; [
    (python3.withPackages (ps: with ps; [
      pyyaml
      matplotlib
      numpy
      pandas
      seaborn
      sympy
      scipy
      west
    ]))
    gcc
    mathematica
  ];
}


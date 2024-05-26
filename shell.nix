{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = [
    pkgs.texliveFull
    pkgs.inkscape
    pkgs.gnumake
    pkgs.bashInteractive
    pkgs.python312Packages.pygments
    pkgs.python312
  ];
}

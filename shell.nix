{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = [
    pkgs.texliveFull
    pkgs.gnumake
    pkgs.bashInteractive
    pkgs.python312Packages.pygments
    pkgs.python312
    pkgs.inkscape
  ];
}

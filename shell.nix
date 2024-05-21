{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = [
    pkgs.texliveFull
    pkgs.inkscape
    pkgs.gnumake
    pkgs.bashInteractive
    pkgs.python311Packages.pygments
    pkgs.python311Full
  ];
}

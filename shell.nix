{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = [
    pkgs.texliveFull
    pkgs.zathura
    pkgs.inotify-tools
    pkgs.gnumake
    pkgs.bashInteractive
  ];
}

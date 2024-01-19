{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = [
    pkgs.texliveFull
    pkgs.zathura
    pkgs.inotify-tools
    pkgs.gnumake
    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}

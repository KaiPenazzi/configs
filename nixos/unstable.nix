{ config, pkgs, ...}:
let
    unstable = import <nixpkgs-unstable> {};

in {
    environment.systemPackages = with pkgs; [
        unstable.neovim
        (unstable.atlauncher.override {
            jre = temurin-jre-bin-21;
        })
        unstable.ghostty
    ];
}

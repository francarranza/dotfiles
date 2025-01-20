{ config, pkgs, lib, ... }:

{
  imports = [
    ../modules/main.nix
  ];

  home.username = "fran";
  home.homeDirectory = "/Users/fran";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    unixtools.watch
  ];
}


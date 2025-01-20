{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    docker
    docker-compose
    lazydocker
    awscli2
    google-cloud-sdk
    terraform
  ];

  xdg.enable = true;

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    shellAliases = {
    };
  };
}

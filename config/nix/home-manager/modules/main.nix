{ config, pkgs, lib, ... }:

{
  imports = [
    ./neovim.nix
    ./infrastructure.nix
  ];

  home.packages = with pkgs; [
    gh
    tig
  ];

  programs.git = {
    enable = true;
    userName = "Francisco Carranza";
    userEmail = "hello@francarranza.com";
    ignores = [
      ".venv"
      "node_modules"
    ];
    extraConfig = {
      merge.ff = false;
    };
  };

  programs.starship = {
    enable = true;
    catppuccin.enable = true;
  };

  programs.btop = {
    enable = true;
    settings = {
      vim_keys = true;
    };
    catppuccin.enable = true;
  };

  programs.kitty = {
    enable = true;
    # theme = "Catppuccin-Mocha";
    settings = {
      font_family = "Hack Nerd Font Mono";
      font_size = 14;
    };
    catppuccin.enable = true;
  };

  programs.gh-dash = {
    enable = true;
    catppuccin.enable = true;
  };

  programs.fzf = {
    enable = true;
    catppuccin.enable = true;
  };

}


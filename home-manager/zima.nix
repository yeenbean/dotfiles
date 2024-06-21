{ config, pkgs, ... }:

{
  home.username = "zima";
  home.homeDirectory = "/home/zima";

  home.stateVersion = "22.11";

  home.packages = [
    #pkgs.hello
  ];

  home.file = {

  };

  home.sessionVariables = {
    EDITOR = "nano";
  };

  programs.home-manager.enable = true;
}
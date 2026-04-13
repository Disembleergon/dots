{ ... }:

{
  imports = [
    ./modules/default.nix
  ];

  home.username = "tom";
  home.homeDirectory = "/home/tom";

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;

}

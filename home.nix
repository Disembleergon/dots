{ ... }:

{
  imports = [
    ./modules/default.nix
  ];

  home.username = "tom";
  home.homeDirectory = "/home/tom";
  xdg.enable = true;

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;

}

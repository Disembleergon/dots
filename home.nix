{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./hypr/default.nix
    ./vim/default.nix
    ./waybar/default.nix
  ];

  home.username = "tom";
  home.homeDirectory = "/home/tom";

  home.packages = with pkgs; [
    # GENERAL
    libreoffice-fresh

    # UTILITY
    nautilus

    # DEV
    rustc
    cargo
  ];

  # CURSOR
  home.pointerCursor = {
    name = "phinger-cursors-dark";
    package = pkgs.phinger-cursors;
    hyprcursor = {
      enable = true;
      size = 32;
    };
  };

  # FIREFOX
  programs.firefox.enable = true;

  # TERMINAL
  programs.alacritty = {
    enable = true;
    settings.window = {
      padding = {
        x = 15;
        y = 8;
      };
      opacity = 0.8;
    };
  };
  programs.starship.enable = true;
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };

  # FZF
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # GIT
  programs.git = {
    enable = true;

    settings.user = {
      name = "Tom Pekrul";
      email = "tom.pekrul1@gmail.com";
    };
  };

  # GITHUB CLI
  programs.gh = {
    enable = true;
    gitCredentialHelper = {
      enable = true;
    };
  };

  # GCC
  programs.gcc.enable = true;

  # SWWW
  services.swww.enable = true;

  # ICON THEME
  gtk.iconTheme = {
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
  };

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;

}

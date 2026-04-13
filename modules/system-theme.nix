{ pkgs, ... }:
{
  # CURSOR
  home.pointerCursor = {
    name = "phinger-cursors-dark";
    package = pkgs.phinger-cursors;
    hyprcursor = {
      enable = true;
      size = 32;
    };
  };

  # ICON THEME
  gtk = {
    enable = true;
    gtk4.theme = null;
    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };
  };
}

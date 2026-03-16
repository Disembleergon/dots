{ pkgs, ... }:

{

  home.packages = with pkgs; [
    rofi
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    # use packages from NixOS module
    package = null;
    portalPackage = null;
  };

  wayland.windowManager.hyprland.settings = {
    input.kb_layout = "de";

    exec-once = [
      "waybar"
    ];

    "$mod" = "SUPER";
    bind = [
      # APPS
      "$mod, F, exec, firefox"
      "$mod, Q, exec, alacritty"
      "$mod, E, exec, nautilus"
      "$mod, W, killactive,"
      "$mod, SPACE, exec, rofi -show drun"

      # MULTIMEDIA CONTROLS
      ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ -l 1.0 5%+"
      ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ -l 1.0 5%-"
      ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86MonBrightnessUp, exec, brightnessctl s 5%+"
      ",XF86MonBrightnessDown, exec, brightnessctl s 5%-"

      # WORKSPACES
      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, 6, movetoworkspace, 6"
      "$mod SHIFT, 7, movetoworkspace, 7"
      "$mod SHIFT, 8, movetoworkspace, 8"
      "$mod SHIFT, 9, movetoworkspace, 9"
      "$mod SHIFT, 0, movetoworkspace, 10"

      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"
    ];

    decoration.rounding = 15;
  };
}

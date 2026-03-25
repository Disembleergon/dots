{ pkgs, ... }:

{

  wayland.windowManager.hyprland = {
    enable = true;

    # use packages from NixOS module
    package = null;
    portalPackage = null;
  };

  # VICINAE
  programs.vicinae = {
    enable = true;
    systemd.enable = true;
  };

  wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = "de";
      touchpad.scroll_factor = 0.7;
      touchpad.natural_scroll = true;
    };

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
      "$mod, SPACE, exec, vicinae toggle"

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

    monitor = [
      "eDP-1, 1920x1080@60, 0x0, 1.25"
      "DP-1, 3840x2160@60, auto-center-right, 1.5"
    ];

    general = {
      gaps_out = 10;
      "col.active_border" = "rgba(afafafaf)";
      "col.inactive_border" = "rgba(595959aa)";
      resize_on_border = true;
    };
    decoration.rounding = 15;
  };
}

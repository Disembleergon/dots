{ pkgs, ... }:
{
  home.packages = with pkgs; [
    jq
    pavucontrol
  ];

  programs.waybar = {
    enable = true;
    settings.main = {
      spacing = 4;

      modules-left = [
        "custom/nixos"
        "hyprland/workspaces"
      ];
      modules-right = [
        "network"
        "pulseaudio"
        "cpu"
        "memory"
        "clock"
      ];

      "custom/nixos" = {
        format = "";
        tooltip = false;
      };

      "hyprland/workspaces" = {
        disable-scroll = true;
        all-outputs = true;
        warp-on-scroll = false;
        format = "{name}";
      };

      network = {
        format-ethernet = "󰌗  {ipaddr}/{cidr}";
        format-wifi = "   {essid} ({signalStrength}%)";
        format-disconnected = "Disconnected ⚠";
        tooltip = false;
      };

      pulseaudio = {
        format = "   {volume}%";
        format-muted = " ";
        on-click = "pavucontrol";
      };

      cpu = {
        format = "  {usage}%";
      };

      memory = {
        format = "  {}%";
      };

      clock = {
        tooltip = false;
      };
    };
    style = builtins.readFile ./style.css;
  };
}

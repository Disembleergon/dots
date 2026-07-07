{ config, ... }:
{
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
    dotDir = "${config.xdg.configHome}/zsh";
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };
}

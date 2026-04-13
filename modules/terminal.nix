{ ... }:
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
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };
}

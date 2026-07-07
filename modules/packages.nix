{ pkgs, config, ... }:
{
  home.packages = with pkgs; [

    # GENERAL
    bitwig-studio
    cables
    tuner

    # UTILITY
    ffmpeg

  ];

  ##################################################
  ##################################################

  # FIREFOX
  programs.firefox = {
    configPath = "${config.xdg.configHome}/mozilla/firefox";
    enable = true;
  };

  # FZF
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # GCC
  programs.gcc.enable = true;

}

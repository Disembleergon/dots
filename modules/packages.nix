{ pkgs, config, ... }:
{
  home.packages = with pkgs; [

    # GENERAL
    bitwig-studio
    cables
    proton-vpn

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

  # THUNDERBIRD
  programs.thunderbird.enable = true;

  # FZF
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # GCC
  programs.gcc.enable = true;

  # DIRENV
  programs.direnv = {
    enable = true;
    silent = true;
  };

}

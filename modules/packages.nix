{ pkgs, config, ... }:
{
  home.packages = with pkgs; [

    # GENERAL
    bitwig-studio
    ardour
    cables
    proton-vpn
    mpv

    # DEV
    devenv

    # UTILITY
    ffmpeg
    (bottles.override { removeWarningPopup = true; })

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

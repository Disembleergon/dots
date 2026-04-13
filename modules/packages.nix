{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # GENERAL
    libreoffice-fresh

    # UTILITY
    nautilus
    ffmpeg

    # DEV
    rustc
    cargo
  ];

  ##################################################
  ##################################################

  # FIREFOX
  programs.firefox.enable = true;

  # FZF
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # GCC
  programs.gcc.enable = true;

  # AWWW
  services.awww.enable = true;
}

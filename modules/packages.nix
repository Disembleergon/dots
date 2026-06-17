{ pkgs, ... }:
{
  home.packages = with pkgs; [

    # UTILITY
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

}

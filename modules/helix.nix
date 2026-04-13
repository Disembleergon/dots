{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    settings = {
      theme = "monokai_soda";
      editor.cursor-shape = {
        normal = "block";
        insert = "bar";
        select = "underline";
      };
    };

    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = "nixfmt";
      }
    ];

    extraPackages = with pkgs; [
      nixd
      nixfmt
    ];
  };

}

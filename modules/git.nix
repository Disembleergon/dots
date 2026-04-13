{ ... }:
{
  # GIT
  programs.git = {
    enable = true;

    settings.user = {
      name = "Tom Pekrul";
      email = "tom.pekrul1@gmail.com";
    };
  };

  # GITHUB CLI
  programs.gh = {
    enable = true;
    gitCredentialHelper = {
      enable = true;
    };
  };
}

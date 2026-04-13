{ ... }:
{
  services.hyprsunset.enable = true;
  services.hyprsunset.settings = {
    profile = [
      {
        time = "8:00";
        identity = true;
      }
      {
        time = "19:30";
        temperature = 4500;
      }
    ];
  };
}

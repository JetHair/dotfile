{ username, ... }:
{
  services.syncthing = {
    enable = true;
    user = "${username}";
    dataDir = "/home/${username}";
    configDir = "/home/${username}/.config/syncthing";
    openDefaultPorts = true;
    settings = {
      devices = {
        "device1" = {
          id = "WY5EOEW-OLJPYJG-YOLDJYZ-IKEKVS7-L5GH45O-NRR3J4K-5DBLZKP-QIDSLQD";
        };
        "device2" = {
          id = "55WUE4J-3LRUESQ-PCXQYGM-E6LABOZ-JWLIDQP-CBTPGQF-V7O53IL-3IF63Q7";
        };
      };
      folders = {
        "AudioBooks" = {
          path = "~/AudioBooks";
          devices = [
            "device1"
            "device2"
          ];
        };
        "Books" = {
          path = "~/Books";
          devices = [
            "device1"
            "device2"
          ];
        };
        "Share" = {
          path = "~/Temp";
          devices = [
            "device1"
            "device2"
          ];
        };
      };
    };
  };
}

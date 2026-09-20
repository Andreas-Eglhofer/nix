{ ... }:

{
  networking.networkmanager = {
    enable = true;

    ensureProfiles = {
      environmentFiles = [
        "/home/andreas/Code/personal/nix/.env"
      ];

      profiles."MIT SECURE" = {
        connection = {
          id = "MIT SECURE";
          type = "wifi";
          autoconnect = true;
        };

        wifi = {
          mode = "infrastructure";
          ssid = "MIT SECURE";
        };

        wifi-security = {
          key-mgmt = "wpa-eap";
        };

        "802-1x" = {
          eap = "peap";
          identity = "ale2528";
          phase2-auth = "mschapv2";
          password = "$MIT_SECURE_PASSWORD";
        };

        ipv4.method = "auto";
        ipv6.method = "auto";
      };
    };
  };
}

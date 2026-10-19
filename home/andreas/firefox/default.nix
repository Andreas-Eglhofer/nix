{ ... }:

{
  programs.firefox = {
    enable = true;

    policies = {
      AIControls = {
        Default = {
          Value = "blocked";
          Locked = true;
        };
      };
    };

    profiles.andreas = {
      id = 0;
      isDefault = true;

      settings = {
        "layout.css.devPixelsPerPx" = "0.9";
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
      };

      userContent = ''
        a,
        a *,
        [role="link"],
        [role="link"] *,
        button,
        button * {
          cursor: default !important;
        }
      '';
    };

    profiles.hardened = {
      id = 1;
      isDefault = false;

      settings = {
        "layout.css.devPixelsPerPx" = "0.9";
      };

      search = {
        default = "ddg";
        privateDefault = "ddg";
        force = true;
      };

      extraConfig = (builtins.readFile ./arkenfox-user.js) + ''
        // Security
        user_pref("browser.safebrowsing.downloads.remote.enabled", true);

        // DNS
        user_pref("network.trr.mode", 3);
        user_pref("network.trr.uri", "https://dns.quad9.net/dns-query");
        user_pref("network.trr.custom_uri", "https://dns.quad9.net/dns-query");

        // Sessions
        user_pref("privacy.clearOnShutdown_v2.cookiesAndStorage", false);
        user_pref("browser.startup.page", 3);

        // Performance
        user_pref("browser.cache.disk.enable", true);
      '';
    };
  };

  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      "text/html" = [ "firefox.desktop" ];
      "x-scheme-handler/http" = [ "firefox.desktop" ];
      "x-scheme-handler/https" = [ "firefox.desktop" ];
    };
  };
}

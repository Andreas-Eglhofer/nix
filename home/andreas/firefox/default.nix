{ ... }:

{
  programs.firefox = {
    enable = true;

    profiles.andreas = {
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

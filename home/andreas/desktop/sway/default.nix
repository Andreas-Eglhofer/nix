{ pkgs, ... }:

{
  wayland.windowManager.sway = {
    enable = true;

    # NixOS already installs Sway.
    package = null;

    config = {
      modifier = "Mod4";
      terminal = "${pkgs.foot}/bin/foot";
      
  input = {
    "type:touchpad" = {
      natural_scroll = "enabled";
    };
  };
      # No bar.
      bars = [ ];

      gaps = {
  inner = 6;
  outer = 6;
  smartGaps = "on";
};

window = {
  border = 2;
  titlebar = true;
};

floating = {
  border = 2;
  titlebar = true;
};

colors = {
  background = "#05050505";

  focused = {
    border = "#777777";
    background = "#111111";
    text = "#ffffff";
    indicator = "#777777";
    childBorder = "#777777";
  };

  focusedInactive = {
    border = "#444444";
    background = "#0a0a0a";
    text = "#aaaaaa";
    indicator = "#444444";
    childBorder = "#444444";
  };

  unfocused = {
    border = "#2a2a2a";
    background = "#050505";
    text = "#777777";
    indicator = "#2a2a2a";
    childBorder = "#2a2a2a";
  };

  urgent = {
    border = "#aa0000";
    background = "#110000";
    text = "#ffffff";
    indicator = "#aa0000";
    childBorder = "#aa0000";
  };
};

      keybindings = {
        "Mod4+Return" = "exec ${pkgs.foot}/bin/foot";

        "Mod4+Shift+q" = "kill";

        "Mod4+h" = "focus left";
        "Mod4+j" = "focus down";
        "Mod4+k" = "focus up";
        "Mod4+l" = "focus right";

        "Mod4+Shift+h" = "move left";
        "Mod4+Shift+j" = "move down";
        "Mod4+Shift+k" = "move up";
        "Mod4+Shift+l" = "move right";

        "Mod4+1" = "workspace number 1";
        "Mod4+2" = "workspace number 2";
        "Mod4+3" = "workspace number 3";
        "Mod4+4" = "workspace number 4";
        "Mod4+5" = "workspace number 5";

        "Mod4+Shift+1" = "move container to workspace number 1";
        "Mod4+Shift+2" = "move container to workspace number 2";
        "Mod4+Shift+3" = "move container to workspace number 3";
        "Mod4+Shift+4" = "move container to workspace number 4";
        "Mod4+Shift+5" = "move container to workspace number 5";

        "Mod4+Shift+c" = "reload";
        "Mod4+Shift+e" = "exit";


        "XF86MonBrightnessUp" = "exec ${pkgs.brightnessctl}/bin/brightnessctl set +5%";
        "XF86MonBrightnessDown" = "exec ${pkgs.brightnessctl}/bin/brightnessctl set 5%-";

        "XF86AudioRaiseVolume" = "exec ${pkgs.wireplumber}/bin/wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
        "XF86AudioLowerVolume" = "exec ${pkgs.wireplumber}/bin/wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";

        "XF86AudioMute" = "exec ${pkgs.wireplumber}/bin/wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
        "XF86AudioMicMute" = "exec ${pkgs.wireplumber}/bin/wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";

        "XF86AudioPlay" = "exec ${pkgs.playerctl}/bin/playerctl play-pause";
        "XF86AudioNext" = "exec ${pkgs.playerctl}/bin/playerctl next";
        "XF86AudioPrev" = "exec ${pkgs.playerctl}/bin/playerctl previous";
      };
    };
  };
}

{
# xserver
  services.xserver.enable = true;
  services.xserver.windowManager.dwm.enable = true;

# keymap in X11
  services.xserver.xkb.layout = "us,ru";
  services.xserver.xkb.options = "grp:alt_caps_toggle";

  services.displayManager = {
    autoLogin.enable = true;
    autoLogin.user = "q";
  };
}

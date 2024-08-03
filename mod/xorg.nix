{
  # Включение X сервера
  services.xserver = {
    enable = true;
    windowManager.dwm.enable = true;

    # Настройки клавиатурной раскладки и переключения
    xkb.layout = "us,ru";
    xkb.options = "grp:alt_caps_toggle";
  };

  # Настройки дисплейного менеджера
  services.displayManager = {
    autoLogin.enable = true;
    autoLogin.user = "q";
  };
}

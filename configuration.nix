{ config, lib, pkgs, ... }: {
  imports =
    [
	./hardware-configuration.nix
	./packages.nix
	./mod
    ];

# Устанавливаем имя хоста.
  networking.hostName = "NOS";

# Устанавливаем временную зону.
  time.timeZone = "Europe/Kiev";

# Выбираем настройки интернационализации.
  i18n.defaultLocale = "en_US.UTF-8";

# Копировать текущую конфигурацию системы в /run/current-system/configuration.nix
  system.copySystemConfiguration = true;

# Включение экспериментальных функций Nix
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

# Устанавливаем версию состояния системы для совместимости
  system.stateVersion = "24.05";
}

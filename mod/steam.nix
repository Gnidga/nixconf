{ pkgs, ... }: {

  # Включение Steam и настройка сетевого взаимодействия
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;  # Открытие портов для Remote Play
    dedicatedServer.openFirewall = true;  # Открытие портов для Source Dedicated Server
    gamescopeSession.enable = true;  # Включение сессии Gamescope
  };

  # Включение и настройка GameMode
  programs.gamemode.enable = true;

  # Установка дополнительных пакетов
  environment.systemPackages = with pkgs; [
    mangohud  # Пакет для мониторинга производительности
  ];

  # Включение виртуализации
  virtualisation.libvirtd.enable = true;
}

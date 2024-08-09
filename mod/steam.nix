{ pkgs, ... }: {

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;  
    gamescopeSession.enable = true;  
  };

  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    mangohud  # Пакет для мониторинга производительности
  ];

  virtualisation.libvirtd.enable = true;
}

{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
	vim
	wget
	mesa-demos
	git
	xorg.xrandr
	oh-my-zsh
	hwinfo
	inxi
	lshw
	gh
	xfce.thunar
	discord
	slstatus
	fastfetch
	kitty
	neofetch
	vlc
	abiword
	neovim
	libreoffice
	hunspellDicts.uk-ua
	htop
	fd
	bat
	nitrogen
	ffmpeg
	clamav
	xclip
	system-config-printer
	pciutils
	obs-studio
	xkb-switch
	zoom-us
	cnijfilter_4_00
	brave
	dmenu
	flameshot
	pavucontrol
	xorg.xinit
	xorg.xorgserver
	openssl
	telegram-desktop
  ];

  fonts.packages = with pkgs; [
	jetbrains-mono
	noto-fonts
	noto-fonts-emoji
	twemoji-color-font
	font-awesome
	powerline-fonts
	powerline-symbols
	(nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];

  nixpkgs.overlays = [
    (final: prev: { 
      dwm = prev.dwm.overrideAttrs (_: { src = ./dwm; });
      slstatus = prev.slstatus.overrideAttrs (_: { src = ./slstatus; });
    })
  ];
}

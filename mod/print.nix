{ pkgs, ... }: {
  services.printing.enable = true;
  services.printing.drivers = [ pkgs.cnijfilter_4_00 ];
}

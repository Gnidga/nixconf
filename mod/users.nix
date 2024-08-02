{ pkgs, ... }: {
  users = {
    users = {
      q = {
        description = "Marian";
        isNormalUser = true;
        extraGroups = [ "wheel" "lp" ];
      };
    };
  };

  services.getty.autologinUser = "q";
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
}

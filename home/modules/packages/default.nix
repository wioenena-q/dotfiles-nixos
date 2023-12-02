{ lib, pkgs, ... }: {
  home.packages = with pkgs; [
    brave
    spotify
  ];
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "spotify"
  ];
}

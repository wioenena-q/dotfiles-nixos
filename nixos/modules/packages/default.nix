{ lib, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    neovim
    wget
    git
    kitty
    home-manager
    xdg-user-dirs
  ];

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "spotify"
  ];
}

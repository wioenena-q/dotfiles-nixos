{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    neovim
    wget
    git
    kitty
    home-manager
    xdg-user-dirs
  ];
}

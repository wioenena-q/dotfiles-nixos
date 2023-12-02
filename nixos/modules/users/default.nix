{ ... }: {
  users.users = {
    wioenena = {
      isNormalUser = true;
      extraGroups = [ "wheel" "storage" "power" "networkmanager" ];
      initialPassword = "12345";
    };
  };
}

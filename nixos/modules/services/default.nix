{ ... }: {
  services = {
   xserver = {
      enable = true;
      xkb.layout = "tr";

      displayManager.sddm = {
        enable = true;
	autoNumlock = false;
	wayland.enable = true;
      };
      windowManager.i3.enable = true;
    };
  };
}

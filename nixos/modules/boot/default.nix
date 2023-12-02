{ pkgs, ... }: {
  boot = {
    kernelParams = [ "i915-force_probe=46a8" ];
    loader = {
      grub = {
        enable = true;
	useOSProber = true;
	efiSupport = true;
	device = "nodev";
	theme = pkgs.stdenv.mkDerivation {
	  pname = "distro-grub-themes";
	  version = "3.2";
	  src = pkgs.fetchFromGitHub {
	    owner = "AdisonCavani";
	    repo = "distro-grub-themes";
	    rev = "v3.2";
	    hash = "sha256-U5QfwXn4WyCXvv6A/CYv9IkR/uDx4xfdSgbXDl5bp9M=";
	  };
	  installPhase = ''
	  mkdir nixos &&
	  tar -xvf themes/windows-11.tar -C nixos &&
	  cp -r nixos $out
	  '';
	};
      };
      efi.canTouchEfiVariables = true;
    };
  };
}

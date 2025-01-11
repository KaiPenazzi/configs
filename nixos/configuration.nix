{ config, lib, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./unstable.nix
    ];

  boot.loader.systemd-boot.enable = true;

  hardware.graphics.enable = true;

  networking.hostName = "KaiNixOS"; # Define your hostname.
  # Pick only one of the below networking options.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # desktop environment
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  services.displayManager.sddm.enable = true;
  services.xserver.enable = true;


  # Enable sound.
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kai = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      # Add additional package names here
      "spotify"
      "steam-run"
      "steam-original"
      "steam-unwrapped"
    ];

  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    kitty
    firefox
    rofi-wayland
    hyprpaper
    gcc
    temurin-jre-bin-21
    webcord
    keepassxc
    nextcloud-client
    spotify
    htop
    steam-run
    neofetch
    cargo
    texlive.combined.scheme-medium
    zathura
    tree-sitter
    nodejs_22
    unzip
    biber
    wl-clipboard
    ripgrep
  ];


  system.stateVersion = "24.11"; # Did you read the comment?
}


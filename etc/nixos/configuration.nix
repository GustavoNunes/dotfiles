# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda";

  # networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Select internationalisation properties.
  i18n = {
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };
  
  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    wget emacs firefox chromium git mkpasswd i3status dmenu rxvt_unicode
  ];

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Keyboard settings
  services.xserver.layout = "us";
  services.xserver.xkbModel = "pc105";
  services.xserver.xkbVariant = "intl";
  services.xserver.xkbOptions = "ctrl:nocaps,lvl3:menu_switch";

  # Display and window manager settings.

  services.xserver.displayManager = {
    sessionCommands = ''
      ${pkgs.xlibs.xmodmap}/bin/xmodmap -e "keycode 108 = Alt_R"
      ${pkgs.xlibs.xmodmap}/bin/xmodmap -e "add mod1 = Alt_R"
    '';
  };

  services.xserver.windowManager = {
    i3.enable = true;
    default = "i3";
  };


  # Define a user account. Don't forget to set a password with ‘passwd’.

  security.sudo.wheelNeedsPassword = false;
  users.mutableUsers = false;
  users.extraUsers = {
    gustavo = {
      hashedPassword = "$6$X0LW9dXv.7$tNP0bo87zlvOH6vvG.i/2QSnCFUSYvONzJF0H3iwz3sco6EEGA6JX5ZzqSrhzL/G0C8iVBkDJPlrpY9JWqCbz0";
      extraGroups = ["wheel"];
      isNormalUser = true;
    };
  };

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.03";

}

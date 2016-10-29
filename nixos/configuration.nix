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
  boot.loader.grub = {
    enable = true;
    version = 2;
    device = "/dev/sda";
  };

  # Select internationalisation properties.
  i18n = {
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";

  # Networking options
  networking = {
    usePredictableInterfaceNames = false;
    wireless.enable = false; # Leave this to Wicd
    useDHCP = false; # Leave this to Wicd
    wicd.enable = true;
  };

  # Programs and packages
  programs.zsh.enable = true;

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # System and utility packages
    wget mkpasswd python unzip

    # X11 and display packages
    i3status dmenu rxvt_unicode xsel

    # General use packages
    emacs firefox chromium git dropbox brasero

    # Development packages
    leiningen
  ];

  services.xserver = {
    enable = true;

    # Keyboard settings
    layout = "us";
    xkbModel = "pc105";
    xkbVariant = "intl";
    xkbOptions = "ctrl:nocaps,lvl3:menu_switch";

    # Display and window manager settings.
    displayManager = {
      slim = {
        enable = true;
        theme = pkgs.fetchurl {
          url = "https://github.com/edwtjo/nixos-black-theme/archive/v1.0.tar.gz";
          sha256 = "13bm7k3p6k7yq47nba08bn48cfv536k4ipnwwp1q1l2ydlp85r9d";
        };
      };

      sessionCommands = ''
        ${pkgs.xlibs.xmodmap}/bin/xmodmap -e "keycode 108 = Alt_R"
        ${pkgs.xlibs.xmodmap}/bin/xmodmap -e "add mod1 = Alt_R"
      '';
    };

    windowManager = {
      i3.enable = true;
      default = "i3";
    };
  };

  security.sudo.wheelNeedsPassword = false;
  users = {
    defaultUserShell = "/run/current-system/sw/bin/zsh";
    mutableUsers = false;
    extraUsers = {
      gustavo = {
        hashedPassword = "$6$X0LW9dXv.7$tNP0bo87zlvOH6vvG.i/2QSnCFUSYvONzJF0H3iwz3sco6EEGA6JX5ZzqSrhzL/G0C8iVBkDJPlrpY9JWqCbz0";
        extraGroups = ["wheel"];
        isNormalUser = true;
      };
    };
  };

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.03";

}

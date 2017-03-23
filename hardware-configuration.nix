# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usb_storage" "sd_mod" "rtsx_pci_sdmmc" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/f1abfb6b-0dbe-4021-8997-d1c07df3a13f";
      fsType = "ext4";
    };

  # Disabled for testing
  #boot.initrd.luks.devices."cryptroot".device = "/dev/disk/by-uuid/b9eeb766-4ef4-4e47-9fe3-f424b342d82f";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/1C04-0CA0";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/51836bca-a1b5-4626-bdd1-22da29779da1"; }
    ];

  nix.maxJobs = lib.mkDefault 8;
  powerManagement.cpuFreqGovernor = "powersave";
}

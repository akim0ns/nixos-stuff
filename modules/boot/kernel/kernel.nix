{pkgs, lib, ...}: {


  boot.kernelPackages = pkgs.linuxPackagesFor (pkgs.pkgs.linux_7_2.override { stdenv = pkgs.clangStdenv; });
}

{pkgs, ...}: {

  boot.kernelPackages = pkgs.linuxPackagesFor (pkgs.pkgs.linux_latest.override {
    stdenv = pkgs.overrideCC pkgs.llvm.stdenv (
      pkgs.llvm.stdenv.cc.override {
        bintools = pkgs.llvmPackages.bintools;
      }
    );
    extraMakeFlags = ["LLVM=1"];
  });
  boot.kernelPatches = [
    {
      name = "bore";
      patch = ./patches/bore.patch;
    }
  ];
}

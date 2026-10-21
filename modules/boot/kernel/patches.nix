{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:

let
  version = lib.versions.majorMinor (config.boot.kernelPackages.kernel.version);
in

{
 boot.kernelPatches = [

        {
          name = "clang";
          patch = "${inputs.patches}/${version}/clang-patches/0001-clang-patches.patch";
        }

        {
          name = "infinity";
          patch = "${inputs.patches}/${version}/infinity-scheduler-patch/0001-sched-7.2-introduce-Infinity-Scheduler-by-Galih-Tama.patch";
        }
  ];
}


{ pkgs, inputs, ... }:

{
environment.systemPackages = with pkgs; [
pkgs.kdePackages.kate
];
}

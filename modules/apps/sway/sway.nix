{ pkgs, ... }:

{
programs.sway = {
  enable = true;
  wrapperFeatures.gtk = true;
};
programs.sway.extraPackages = [
pkgs.foot
pkgs.swayidle
pkgs.swaylock
pkgs.wlr-randr
pkgs.wmenu
pkgs.grim
pkgs.slurp
pkgs.wayfreeze
pkgs.wl-clipboard
pkgs.psmisc
];
}

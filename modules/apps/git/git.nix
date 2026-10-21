{pkgs, ...}:

{
programs.git.enable = true;
programs.git.package = pkgs.git.override {
stdenv = pkgs.clangStdenv; };
}

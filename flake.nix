{
  description = "katz's amazing system flake";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
  inputs.nvf.url = "github:notashelf/nvf";
  inputs.nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = inputs: {
    nixosConfigurations.nixos = inputs.nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      system = "x86_64-linux";
      modules = [ ./configuration.nix inputs.nvf.nixosModules.default ]; 
   };
  };
}

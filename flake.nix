{
  description = "NixOS host specific configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations = {
      nix-wsl = nixpkgs.lib.nixosSystem {
        modules = [
          ./wsl.nix
        ];
      };
      nix-vm = nixpkgs.lib.nixosSystem {
        modules = [
          ./vm.nix
        ];
      };
    };
  };
}


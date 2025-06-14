{
  description = "NixOS config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.wsl = nixpkgs.lib.nixosSystem {
      modules = [
        ./wsl.nix
      ];
    };
  };
}


{
  description = "nixos config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    nixosconfigurations = {
      nix-wsl = nixpkgs.lib.nixossystem {
        modules = [
          ./wsl.nix
        ];
      };
      nix-vm = nixpkgs.lib.nixossystem {
        modules = [
          ./vm.nix
        ];
      };
    }
  };
}


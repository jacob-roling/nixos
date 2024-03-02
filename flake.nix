{
  description = "NixOS Config";

  inputs = {};

  outputs = {
    # sudo nixos-rebuild switch --flake .#desktop
    nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
      extraSpecialArgs = {
        inherit inputs;
      };
      modules = [
        "./hosts/desktop/configuration.nix"
      ];
    };

    # sudo nixos-rebuild switch --flake .#laptop
    nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
      extraSpecialArgs = {
        inherit inputs;
      };
      modules = [
        "./hosts/laptop/configuration.nix"
      ];
    };
  };
}
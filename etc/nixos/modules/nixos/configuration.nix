{ pkgs, lib, ... }:
{
  imports = [
    "./hyprland.nix"
  ];

  # Enable flakes
  nix.settings.experimental-features = ["nix-command" "flakes"];
}
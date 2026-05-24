# nix/modules/home-manager.nix — auto-generated from widestring.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.widestring; in {
  options.programs.widestring = {
    enable = lib.mkEnableOption "widestring";
    package = lib.mkOption { type = lib.types.package; default = pkgs.widestring or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}

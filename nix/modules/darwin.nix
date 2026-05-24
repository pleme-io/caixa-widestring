# nix/modules/darwin.nix — auto-generated from widestring.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.widestring; in {
  options.services.widestring = {
    enable = lib.mkEnableOption "widestring";
    package = lib.mkOption { type = lib.types.package; default = pkgs.widestring or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}

# nix/modules/nixos.nix — auto-generated from widestring.caixa.lisp
# description: "A wide string Rust library for converting to and from wide strings, such as those often used in Windows API or other FFI libaries. Both `u16` and `u32` string types are provided, including support for UTF-16 and UTF-32, malformed encoding, C-style strings, etc."
{ config, lib, pkgs, ... }:
let
  cfg = config.services.widestring;
in {
  options.services.widestring = {
    enable = lib.mkEnableOption "widestring";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.widestring or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}

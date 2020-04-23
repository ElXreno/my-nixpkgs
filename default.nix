{ pkgs ? import <nixpkgs> {} }:

{
  zswap-cli = pkgs.callPackage ./pkgs/zswap-cli {};

  escl-scan = pkgs.callPackage ./pkgs/escl-scan {};

  yps = pkgs.callPackage ./pkgs/yps {};
}

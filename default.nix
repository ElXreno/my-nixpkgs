{ pkgs ? import <nixpkgs> {} }:

{
  zswap-cli = pkgs.callPackage ./pkgs/zswap-cli {};
}

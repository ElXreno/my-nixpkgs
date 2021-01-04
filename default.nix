{ pkgs ? import <nixpkgs> {} }:

with pkgs;
{
  zswap-cli = callPackage ./pkgs/zswap-cli {};

  escl-scan = callPackage ./pkgs/escl-scan {};

  yps = callPackage ./pkgs/yps {};
  
  filesorter = callPackage ./pkgs/filesorter {};
  
  kernelPatches = callPackage ./pkgs/kernelPatches/patches.nix {};
}

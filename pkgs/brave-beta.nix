{ callPackage, fetchurl }:
let
  version = "1.92.128";
  hash = "1hh894qvyd5jcaqi3z4889khcrdm387h5valqg4w2r3mv78ag9bc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
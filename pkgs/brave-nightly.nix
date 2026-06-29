{ callPackage, fetchurl }:
let
  version = "1.94.11";
  hash = "11vp36v0zgs9w7c4j1fnr1bgarrn40yw778qi0rg2bd032wndi01";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

{ callPackage, fetchurl }:
let
  version = "1.93.105";
  hash = "1vanccx4j3imgqgz2rrhf1715bk7q23q38g1xlvch4d2xg665w6b";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
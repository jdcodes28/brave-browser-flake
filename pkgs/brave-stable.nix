{ callPackage, fetchurl }:
let
  version = "1.93.129";
  hash = "1af3g0klql2299f6ha51wpbk5a0nff29vynljnm83ki4ixxagv3w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

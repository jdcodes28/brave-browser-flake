{ callPackage, fetchurl }:
let
  version = "1.91.172";
  hash = "0gbsf9k2gy50jxbi0qlfjhhpn3v9njal1ps8833sfsd3faq4kbk3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

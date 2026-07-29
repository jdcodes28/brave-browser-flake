{ callPackage, fetchurl }:
let
  version = "1.93.128";
  hash = "1wp61baz00la0z15lrwm00jsw12fsabgfbx0l6x5zbpi7av3xi6n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

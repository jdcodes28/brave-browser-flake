{ callPackage, fetchurl }:
let
  version = "1.92.123";
  hash = "1ad47qizy32dx16czk2b5l5ymg45gj7ac87pafjlbwmws13424ac";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
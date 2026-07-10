{ callPackage, fetchurl }:
let
  version = "1.94.56";
  hash = "1cc8ai1ni1xw3jqw29vsd1a7f817jygzl9fkdqpnkj2raa4rkyaj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

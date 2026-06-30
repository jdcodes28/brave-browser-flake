{ callPackage, fetchurl }:
let
  version = "1.94.15";
  hash = "1z2v7r4jbkzyrgbj3ql04zfqx4f6l1q9dcqz2f9vv8jn2qxik48j";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

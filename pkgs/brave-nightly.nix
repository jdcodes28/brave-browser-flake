{ callPackage, fetchurl }:
let
  version = "1.94.47";
  hash = "1p0rb6fpxkkf1g67rv0w06si6f49yhggcha78nygljvyxy788mq4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

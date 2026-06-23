{ callPackage, fetchurl }:
let
  version = "1.93.95";
  hash = "0wsdf8sfyd41k7s0i3rkmhx3s1mmshsjxpizykli6rlzlb1p1f7r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

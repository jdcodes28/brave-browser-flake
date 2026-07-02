{ callPackage, fetchurl }:
let
  version = "1.93.110";
  hash = "0vmkdksic0vcxyax8bp6qhbdiz19wkb5bi7j7ki6z0q98qcj64hg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
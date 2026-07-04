{ callPackage, fetchurl }:
let
  version = "1.94.37";
  hash = "1hl02vpxc643mhcckv78dai8mvm7pvnrvicl5banvrgjl5g877z2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

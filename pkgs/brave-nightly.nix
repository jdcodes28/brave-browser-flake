{ callPackage, fetchurl }:
let
  version = "1.93.90";
  hash = "0xv7df3dydkys5hfv5lwi83xy9bhvdcg2prlhka6cz48fkwmnv3m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

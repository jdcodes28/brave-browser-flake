{ callPackage, fetchurl }:
let
  version = "1.93.88";
  hash = "09jlmkgg2kvxpb0b2ffyxd8n6pxjk6m1x61ayw794480nak878v5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

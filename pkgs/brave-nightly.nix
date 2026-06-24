{ callPackage, fetchurl }:
let
  version = "1.93.100";
  hash = "1dzpfxblz1q9wrmnc3h25djr6czn1qyq0s3138s87yivhirjjda1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

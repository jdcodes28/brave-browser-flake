{ callPackage, fetchurl }:
let
  version = "1.93.70";
  hash = "0jz70m2iysfxbix3hz1pz9s3s3lslwk587a3kl940f0mmqpa38yi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

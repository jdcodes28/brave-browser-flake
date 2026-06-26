{ callPackage, fetchurl }:
let
  version = "1.94.6";
  hash = "0kx4n30kii0a1asp2ra3gzkz7nc0f0mjindvg34q3b71y95bx300";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

{ callPackage, fetchurl }:
let
  version = "1.94.81";
  hash = "0ic75df9h75b6578452l64pj52kfdgjlfli0rnwrchsr04k3mj3p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

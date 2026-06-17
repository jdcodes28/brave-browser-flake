{ callPackage, fetchurl }:
let
  version = "1.92.124";
  hash = "0h7zgm1xscfrbaz4r3dq6hzcabrg8lna02maj06sgp3g3lckd0qq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
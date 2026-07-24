{ callPackage, fetchurl }:
let
  version = "1.95.5";
  hash = "18aig9wfykpp8zq8grgiq7rn44d8w57dvwpqqpk5rrpyrxb00ylh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

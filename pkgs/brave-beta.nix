{ callPackage, fetchurl }:
let
  version = "1.93.118";
  hash = "1ihlgyyhi7djfcjlvlbv6i8lj3gngjxcq28pz3i6m759qc8w8phj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
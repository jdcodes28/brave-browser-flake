{ callPackage, fetchurl }:
let
  version = "1.93.106";
  hash = "1skv53ja46bgn1h0d22zmd7xsv3xh2w4xz3509v0hlmabqy3zhik";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
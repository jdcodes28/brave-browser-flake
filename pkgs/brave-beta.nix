{ callPackage, fetchurl }:
let
  version = "1.93.120";
  hash = "1cyd4cd0d68wlfwv0bbqfcga81wfqnlzagfwfn9gwqi2y50a1rkf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
{ callPackage, fetchurl }:
let
  version = "1.93.65";
  hash = "1vbhp6szv5a78fh44ni6gijvabaimi49b397wjnmgdihchavxmrc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

{ callPackage, fetchurl }:
let
  version = "1.93.107";
  hash = "0qik0vawyfnb81blnlwxydbf9y499js03fgfp21bigadafba8cia";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
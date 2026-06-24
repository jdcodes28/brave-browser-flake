{ callPackage, fetchurl }:
let
  version = "1.92.129";
  hash = "00ssimzf667diz2p834f76xglglrf4syhcd9y7pq3yy9icfb2anv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
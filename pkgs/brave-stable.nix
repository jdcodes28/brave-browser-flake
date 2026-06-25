{ callPackage, fetchurl }:
let
  version = "1.91.178";
  hash = "1aj8iwigbx5hq261dqsjxfp2k14icizk3x8a5cfblh2f899kl58z";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

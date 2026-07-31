{ callPackage, fetchurl }:
let
  version = "1.95.26";
  hash = "17hzif4kq7spv4bwpahdk01xb2rlrpvzcn71s3i62xpknvl7xyfj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

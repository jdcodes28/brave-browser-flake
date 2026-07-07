{ callPackage, fetchurl }:
let
  version = "1.94.43";
  hash = "13ij2p56z5lw78pbgmn616appzdaz00jp1gm53n16l205fmxf1qm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

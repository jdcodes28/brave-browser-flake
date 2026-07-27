{ callPackage, fetchurl }:
let
  version = "1.95.9";
  hash = "041p3gphfmqnp5h5bhx6i04ysm5g6730n4mpxf2n2gnddjv2vcwr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

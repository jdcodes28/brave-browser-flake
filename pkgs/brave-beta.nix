{ callPackage, fetchurl }:
let
  version = "1.93.112";
  hash = "1lx7m8y278fmgvgsvkryvrv5pxzdg4crlcyl0xq111lk292a9bfy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
{ callPackage, fetchurl }:
let
  version = "1.92.137";
  hash = "0bls8lc5alkykr06adyf0bz276jb4wf4mabsr1gk5kq4yv0b3fqw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

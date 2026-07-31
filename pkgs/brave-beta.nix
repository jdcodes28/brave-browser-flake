{ callPackage, fetchurl }:
let
  version = "1.94.99";
  hash = "0smy0l49i1irggm8ns5ik9mq5ppxqkp7jdv7svjr15j5l3a2j425";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
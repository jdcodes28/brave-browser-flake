{ callPackage, fetchurl }:
let
  version = "1.93.124";
  hash = "0dr5kaqxyc3k4f6m38m750srywy5glv3daild00nry7brwymmxpc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
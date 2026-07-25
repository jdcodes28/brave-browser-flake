{ callPackage, fetchurl }:
let
  version = "1.93.127";
  hash = "1g7fzl66hg2c29vzn6hnkb5ayb8ssxz3g0czy32424dnwy7j303h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

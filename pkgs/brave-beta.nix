{ callPackage, fetchurl }:
let
  version = "1.93.113";
  hash = "11gicb4ckz7scywivspnn5dwj4dldmgvlh1zgjaaaqshcrndsg5j";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
{ callPackage, fetchurl }:
let
  version = "1.92.132";
  hash = "0wa80gmga0f7f6377dbnrxwjplafssbkfs29mxhaczx7wpgwgd5n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

{ callPackage, fetchurl }:
let
  version = "1.92.140";
  hash = "19mq0fbs3a5kmkxrhp08p1w3vmf8mq3lc691mf047psfzd3a6790";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

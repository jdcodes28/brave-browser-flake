{ callPackage, fetchurl }:
let
  version = "1.94.10";
  hash = "0ifrfsjp128l057d5b7283ajjv0gyqrk70ks29djf65b6nj3cy04";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

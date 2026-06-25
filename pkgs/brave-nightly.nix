{ callPackage, fetchurl }:
let
  version = "1.94.1";
  hash = "1qwj2dzdydn0fpabxk92h8ny8w4zkpm2x4hgyva5dx4rrahqppwd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

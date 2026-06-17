{ callPackage, fetchurl }:
let
  version = "1.91.175";
  hash = "0919jvvqkhx7qv350pwncrpi8chw0cca24l0pldqxklq22l5mv7z";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

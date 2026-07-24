{ callPackage, fetchurl }:
let
  version = "1.92.144";
  hash = "1afggdikbk0m2jyqxfqsbjzsnkgjgwq9i12mpnma01y4xl7wm3wy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

{ callPackage, fetchurl }:
let
  version = "1.92.128";
  hash = "1pb1xqj49w1ni6g2h3kgpy9bq5jhjzj4krvifm3c00jbwc63b47l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_${version}_amd64.deb";
}

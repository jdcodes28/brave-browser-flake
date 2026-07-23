{ callPackage, fetchurl }:
let
  version = "1.93.126";
  hash = "09ap3yw3qq9ab1j06sb7rwqgppw2cl91jfyhyz5clc5y01xwllm7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

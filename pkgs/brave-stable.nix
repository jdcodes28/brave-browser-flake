{ callPackage, fetchurl }:
let
  version = "1.92.134";
  hash = "054nvb8b0v4w82hlqq3h06yik05w4rs1jg3735c8944b75x3yw2g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

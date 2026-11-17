{
  callPackage,
  fetchurl,
  commandLineArgs ? [ ],
  vulkanSupport ? false,
}:
let
  version = "1.102.10";
  hash = "0lyl7xkfpn8q2qm086x1cjzl84azr4x9pwn4diishifzrxagnx0x";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-origin-nightly";
  inherit version hash commandLineArgs;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_${version}_amd64.deb";
}

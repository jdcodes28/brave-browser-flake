{
  callPackage,
  fetchurl,
  commandLineArgs ? [ ],
  vulkanSupport ? false,
}:
let
  version = "1.102.42";
  hash = "0kqjhzl7plg5pnc3i8595fi9ds5xijd5dmgzyhp05zm1cia2pfvb";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-origin-nightly";
  inherit version hash commandLineArgs;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_${version}_amd64.deb";
}

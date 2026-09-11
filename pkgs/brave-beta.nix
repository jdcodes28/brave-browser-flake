{
  callPackage,
  fetchurl,
  commandLineArgs ? [],
  vulkanSupport ? false,
}:
let
  version = "1.96.51";
  hash = "11hi87k3rgx73kkn6gr9v0lmg2l3bv0c5px76z75xz9x1pavsh9a";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-beta";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}

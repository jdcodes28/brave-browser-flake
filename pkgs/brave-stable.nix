{
  callPackage,
  fetchurl,
  commandLineArgs ? [ ],
  vulkanSupport ? false,
}:
let
  version = "1.100.57";
  hash = "1sfh2xada7cnyp3j00d7qk47zdzfz841qnadsxq6cmx2sqq216in";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-stable";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

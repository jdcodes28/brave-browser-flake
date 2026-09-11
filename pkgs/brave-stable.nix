{
  callPackage,
  fetchurl,
  commandLineArgs ? [ ],
  vulkanSupport ? false,
}:
let
  version = "1.95.101";
  hash = "1k3k3izx4v02l7rqhp0ihs5awv2zzgg5app546w96z8i41caahbw";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-stable";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

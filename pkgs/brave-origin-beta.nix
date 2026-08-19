{
  callPackage,
  fetchurl,
  commandLineArgs ? [ ],
  vulkanSupport ? false,
}:
let
  version = "1.94.112";
  hash = "05in37mg8cx1cbnwxxdkzi60x2s1mldvg2c0pxgcbyjnacfiflvk";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-origin-beta";
  inherit version hash commandLineArgs;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_${version}_amd64.deb";
}

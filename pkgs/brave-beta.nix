{
  callPackage,
  fetchurl,
  commandLineArgs ? [],
  vulkanSupport ? false,
}:
let
  version = "1.100.47";
  hash = "086nf49y2ggfvp6g5ky164dn8k2gyg0w4f2bivnyd3ywhp5rxsqd";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-beta";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}

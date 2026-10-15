{
  callPackage,
  fetchurl,
  commandLineArgs ? [],
  vulkanSupport ? false,
}:
let
  version = "1.99.44";
  hash = "06b07agid8kkxlxd8n372h64vawghpz6iacmv83k73ic684ns68n";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-beta";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}

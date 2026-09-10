{
  callPackage,
  fetchurl,
  commandLineArgs ? [ ],
  vulkanSupport ? false,
}:
let
  version = "1.95.100";
  hash = "1gjkskk558f0qzxh1jvp2qxs8w31z6yycjxqj6rff3l5vb3nc9m0";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-stable";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

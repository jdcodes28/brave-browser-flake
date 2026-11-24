{
  callPackage,
  fetchurl,
  commandLineArgs ? [ ],
  vulkanSupport ? false,
}:
let
  version = "1.101.55";
  hash = "09ghshb56kr86s3drzb9k01zj0lqsx480ch8x9vm264w17kxrnwy";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-origin-beta";
  inherit version hash commandLineArgs;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_${version}_amd64.deb";
}

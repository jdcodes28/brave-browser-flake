{
  callPackage,
  fetchurl,
  commandLineArgs ? [ ],
  vulkanSupport ? false,
}:
let
  version = "1.97.45";
  hash = "0vnrs5sypqzswyb623wzq3vwwqri93xxzp3jq5nz1il49jxdndzc";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-origin-beta";
  inherit version hash commandLineArgs;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_${version}_amd64.deb";
}

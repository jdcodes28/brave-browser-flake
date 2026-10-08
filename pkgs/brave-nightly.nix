{
  callPackage,
  fetchurl,
  commandLineArgs ? [ "--enable-features=BraveAIChatAgentProfile" ],
  vulkanSupport ? false,
}:
let
  version = "1.99.24";
  hash = "1zw08cm4zzw8iygffp5k4s323nwcsx3qk1im6q9b0i1qa59zifsv";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-nightly";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

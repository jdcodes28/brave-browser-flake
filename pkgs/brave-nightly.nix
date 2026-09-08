{
  callPackage,
  fetchurl,
  commandLineArgs ? [ "--enable-features=BraveAIChatAgentProfile" ],
  vulkanSupport ? false,
}:
let
  version = "1.97.13";
  hash = "19q8bbwfvzzg7lhv8r0r6rwkg44ljmvyb4pa867rnhnq68bw66ll";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-nightly";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

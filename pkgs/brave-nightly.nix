{
  callPackage,
  fetchurl,
  commandLineArgs ? [ "--enable-features=BraveAIChatAgentProfile" ],
  vulkanSupport ? false,
}:
let
  version = "1.95.49";
  hash = "00cddg0i0qf542wkk29y94n1x1aq231ryxdq70hmavn04267mdpb";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-nightly";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

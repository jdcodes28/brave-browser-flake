{
  callPackage,
  fetchurl,
  commandLineArgs ? [ "--enable-features=BraveAIChatAgentProfile" ],
  vulkanSupport ? false,
}:
let
  version = "1.97.2";
  hash = "1c06xjfy1ia0s5bqgs990r246qj6c05mb45s4lqhlpw5fa7ym8w4";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-nightly";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

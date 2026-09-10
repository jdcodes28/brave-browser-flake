{
  callPackage,
  fetchurl,
  commandLineArgs ? [],
  vulkanSupport ? false,
}:
let
  version = "1.96.50";
  hash = "033apy5y91a1ydv2y7q44ys69k2jc405mnankmpwrv30isq9mi3h";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-beta";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}

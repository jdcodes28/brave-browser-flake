{
  callPackage,
  fetchurl,
  commandLineArgs ? [ ],
  vulkanSupport ? false,
}:
let
  version = "1.98.57";
  hash = "0sh606f4w41517nrm2590nskaf892rbcqw1sin9qj9cf455jbah3";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-stable";
  inherit version hash commandLineArgs;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

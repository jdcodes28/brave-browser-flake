{ callPackage, fetchurl }:
let
  version = "1.94.61";
  hash = "13vbqyib7p7yaa5nrjb810a7zcwmrkm0y0sshs181x1jf4m32v65";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

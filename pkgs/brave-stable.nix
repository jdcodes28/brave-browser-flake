{ callPackage, fetchurl }:
let
  version = "1.92.141";
  hash = "1scd98pv89l2cwvxfp007kkvr2f8w0w612xn7i6f7jjw7c4yzkh3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

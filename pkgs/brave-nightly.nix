{ callPackage, fetchurl }:
let
  version = "1.93.74";
  hash = "1v95brnx4h6xpp6xzwc0jy05ks825lbmbr0cykaxjg7wvj7gvmhk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

{ callPackage, fetchurl }:
let
  version = "1.93.84";
  hash = "13hfc4a562xvp9381p0z05xdizbhrspmjcwkrln054zz75iwg8nv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

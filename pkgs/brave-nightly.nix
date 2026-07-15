{ callPackage, fetchurl }:
let
  version = "1.94.69";
  hash = "02b6svg93j6dqm24ivaqmf62jxr0vvfrw59i737fb5czyi4ykzyn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

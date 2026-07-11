{ callPackage, fetchurl }:
let
  version = "1.94.59";
  hash = "049jhx611b62pgm0955sr1kpln9isllm4r77rqd7f0k9fdj5q0c4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
}

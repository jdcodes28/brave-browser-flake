{ callPackage, fetchurl }:
let
  version = "1.92.138";
  hash = "098bsgicv1gm5mgsyn9cqwvqlnrha1h2hpigl06479hxhglmi01h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

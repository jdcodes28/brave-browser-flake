{ callPackage, fetchurl }:
let
  version = "1.92.139";
  hash = "0q7b1vfk7dmiqpjfk8cibkini3fzc859x1hiabfs2svc43r1am2h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

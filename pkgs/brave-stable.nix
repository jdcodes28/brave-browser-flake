{ callPackage, fetchurl }:
let
  version = "1.91.173";
  hash = "0c1h4vmhs91lphyb84cbb5pisn583l48s9p6whjqw8jgv8m63kwl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

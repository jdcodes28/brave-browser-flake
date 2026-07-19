{ callPackage, fetchurl }:
let
  version = "1.92.142";
  hash = "0isvh4zshv4nx61yq5jcl8m9js5af5sbzkn7gvzi55gf4p9wl207";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

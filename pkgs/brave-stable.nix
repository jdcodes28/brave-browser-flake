{ callPackage, fetchurl }:
let
  version = "1.92.143";
  hash = "09zs9br8nfjdjihiwb59yh2yf1gfd68s7qbqqdif0xmbxfflvb4d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

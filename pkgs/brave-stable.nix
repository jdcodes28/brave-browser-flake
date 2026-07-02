{ callPackage, fetchurl }:
let
  version = "1.92.133";
  hash = "06pi6s20cp4azgg2nmgwisqj6b8ccnhma64idkd4pa52gpslyhpq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

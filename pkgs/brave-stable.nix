{ callPackage, fetchurl }:
let
  version = "1.91.180";
  hash = "1p8n92dsr4ipchig5iz95hnlqwlmynhx0l9w284s9m4mgqx95kcq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}

{ callPackage, fetchurl }:
let
  version = "1.93.125";
  hash = "098p17fja76j2qv0m4vcp72x1bkpf6ywwydpg35mq6kqd30ly59q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
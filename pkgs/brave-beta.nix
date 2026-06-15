{ callPackage, fetchurl }:
let
  version = "1.92.121";
  hash = "1nd8cs72jjl7mggjsglk53c7xzkzi9r9lw8h2d3rki4xy6yjh8zw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
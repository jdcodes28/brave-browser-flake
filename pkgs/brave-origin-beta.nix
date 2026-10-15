{
  callPackage,
  fetchurl,
  commandLineArgs ? [ ],
  vulkanSupport ? false,
}:
let
  version = "1.99.44";
  hash = "0q450c9clwy5dv0cr7ff470zmjnz6jc0gsksi6ra1d0216jca1pz";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-origin-beta";
  inherit version hash commandLineArgs;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_${version}_amd64.deb";
}

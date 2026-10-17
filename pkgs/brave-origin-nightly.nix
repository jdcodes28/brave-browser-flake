{
  callPackage,
  fetchurl,
  commandLineArgs ? [ ],
  vulkanSupport ? false,
}:
let
  version = "1.100.7";
  hash = "1hhcyhmnx5i9rswx9p4wl2a9vps4qmq6rq3ajbpjj6rqja5xd5ln";
in
callPackage ./build-brave.nix { inherit vulkanSupport; } {
  pname = "brave-origin-nightly";
  inherit version hash commandLineArgs;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_${version}_amd64.deb";
}

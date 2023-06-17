let
    nixpkgs = pin.nixpkgs {};
    pin = import ./chr/pin.nix;
in
    {
        pkgs ? nixpkgs,
    }
    :
    pkgs.stdenv.mkDerivation
        {
            installPhase = pkgs.lib.readFile ./scr/instl.sh;
            name = "fetch-hash";
            phases = ["installPhase"];
            src = ./src;
        }

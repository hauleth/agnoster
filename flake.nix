{
  description = "Agnoster Fish plugin";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
  with flake-utils.lib;
  let
    overlay = final: prev: {
      fishPlugins = prev.fishPlugins.overrideScope' (finalx: prevx: {
        agnoster = prevx.buildFishPlugin {
          pname = "agnoster";
          version = "0.0.1";
          src = ./.;
        };
      });
    };
  in {
    inherit overlay;
  } // (eachSystem allSystems (system: let
    pkgs = import nixpkgs {
      overlays = [overlay];
      inherit system;
    };
  in {
    defaultPackage = pkgs.fishPlugins.agnoster;
  }));
}

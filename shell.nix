{ pkgs ? import (builtins.fetchTarball https://github.com/nixos/nixpkgs/archive/d395190b24b.tar.gz) {} }:
let py = pkgs.python3.withPackages (ps: [
      (ps.callPackage ./default.nix {})
      ps.beautifulsoup4
      ps.click
      ps.markdown
    ]);

in pkgs.mkShell {
  buildInputs = [ py ];
}

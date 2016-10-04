{ pkgs }:
{
  allowUnfree = true;
  allowBroken = true;

  packageOverrides = pkgs : {
    systemEnv = pkgs.buildEnv {
      name = "system-env";

      paths = with pkgs; [
        cacert
        git
        silver-searcher
        python
        nodejs-6_x
        zsh
        wget
        tree
        curl
        vim
        openssl
        nix-repl
      ];
    };
  };
}

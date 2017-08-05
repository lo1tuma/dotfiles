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
        nodejs-8_x
        zsh
        wget
        tree
        curl
        vim
        openssl
        nix-repl
        fd
        exa
        ripgrep
      ];
    };
  };
}

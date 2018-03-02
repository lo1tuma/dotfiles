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
        python
        nodejs-9_x
        zsh
        wget
        tree
        curl
        vim
        openssl
        nix-repl
        fd
        exa
        git-lfs
        ripgrep
        bashInteractive
      ];
    };
  };
}

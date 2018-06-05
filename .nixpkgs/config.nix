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
        nodejs-10_x
        zsh
        wget
        curl
        vim
        openssl
        fd
        exa
        git-lfs
        ripgrep
        bashInteractive
        nix-prefetch-scripts
      ];
    };
  };
}

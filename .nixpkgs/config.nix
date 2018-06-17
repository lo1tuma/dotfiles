{ pkgs }:

{
  allowUnfree = true;
  allowBroken = true;

  packageOverrides = pkgs:
  let
    nvim = pkgs.neovim.override {
      vimAlias = true;
      configure = import ./neovim/config.nix { inherit pkgs; };
      extraPython3Packages = [ pkgs.python3Packages.neovim ];
    };
  in {
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
        nvim
        openssl
        fd
        exa
        git-lfs
        ripgrep
        bashInteractive
        nix-prefetch-scripts
        alacritty
        bat
      ];
    };
  };
}

# from: https://sandstorm.de/de/blog/post/my-first-steps-with-nix-on-mac-osx-as-homebrew-replacement.html
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs }: {
    packages."x86_64-linux".default = let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in pkgs.buildEnv {
      name = "home-packages";
      paths = with pkgs; [
        git-standup
        k9s
        kcat
        kubectl
        kubectl-tree
        kubernetes-helm
        openshift
        wrk
      ];
    };
  };

}

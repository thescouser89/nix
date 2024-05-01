# from: https://sandstorm.de/de/blog/post/my-first-steps-with-nix-on-mac-osx-as-homebrew-replacement.html
{
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
        let
            pkgs = import nixpkgs { inherit system; };
        in
        {
            packages.default = pkgs.buildEnv {
                name = "home-packages";
                paths = with pkgs; [
                  fastfetch
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
        }
    );
}

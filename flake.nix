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
                  nodePackages.prettier
                  nodePackages.bower
                  nodePackages.grunt-cli
                  git-standup           # for work log of commits
                  k9s                   # to see current containers
                  kcat                  # kafka logging
                  kubectl
                  kubernetes-helm
                  lazygit
                  maestral
                  openshift             # oc-cli
                  quarkus
                  wrk
                  zellij
                ];
            };
        }
    );
}

# nix
Trying out nix to replace homebrew

# Initial setup
1. Git clone this repo
2. Run: ```nix profile install .``` inside this folder
3. Run: ```nix flake update``` optionally to update the lock file to the latest nix unstable release
4. Run: ```nix profile upgrade --all``` to install the packages

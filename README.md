# infra
My personal device infrastructure configuration, refactored for the following characteristics:
- Support flexible expansion of users and hosts
- Support both traditional module systems and Dendrix pattern based on flake-parts

## 1. Structure

Overall structure of the nix infrastructure:

``` markdown
.
├── configs         # configs for specific machines
│   ├── Amanojaku   # desktop/win11/wsl2/nixos with CUDA as my major work-station (transfer to nixos later)
│   ├── Bakotsu     # desktop/win11/wsl2/nixos in my company safe-pc
│   └── Chimi       # mini-pc/nixos as a server
├── homes           # configurations prototypes for home-manager
│   └── aor
├── hosts           # configurations prototypes for host
│   ├── common
│   ├── desktop
│   ├── server
│   └── wsl
├── modules         # function modules
│   ├── home
│   └── nixos
├── flakes          # customed flakes
├── pkgs            # customed packages
├── devs            # customed dev environments
├── overlays        # customed overlays
├── templates       # templates used to create new modules
└── README.md
```
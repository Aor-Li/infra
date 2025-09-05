# Aor/Infra
This is my personal multi-user multi-machine monorepo infrastructure based on nix and home-manager.

- The module system is based on [flake-parts](https://github.com/hercules-ci/flake-parts).

- The framework is inspired from the [Dendritic](https://github.com/mightyiam/dendritic) pattern.

- Of course, it includes some of my own unique interpretations and designs.

## 1. Structure

The structure of the overall infrastructure includes several aspects:

### 1.1 Directory Structure

```
.
├── flake.lock
├── flake.nix               # Main flake entry point
├── modules/                # All auto-import modules
│   ├── metas/                  # Meta-configuration and framework setup
│   │   ├── flake-parts/            # Flake-parts feature modules
│   │   └── framework/              # Framework definitions
│   ├── features/               # Feature-specific modules
│   ├── privates/               # Private module and configurations
│   │   ├── nix/
│   │   └── system/
│   ├── prototypes/             # Reusable configuration templates combined with features
│   │   ├── homes/                  # Home-manager templates
│   │   └── hosts/                  # Nixos templates
│   └── profiles/               # Concrete machine and user profiles
│       ├── machines/               # Machine-specific configurations
│       │   ├── Amanojaku/              # Primary PC (Win11/WSL2/NixOS + CUDA)
│       │   ├── Bakotsu/                # Company secure PC (Win11/WSL2/NixOS)
│       │   └── Chimi/                  # Mini-PC server (NixOS)
│       └── users/                  # User-specific configurations
│           └── aor/                    # Personal user profile
├── flakes/                 # Custom flakes definitions
├── overlays/               # Custom overlays definitions
├── devshells/              # Development environments
├── README.md
└── TODO.md
```

Details of each sub-directory would be introduced later.


### 1.2 Module System Structure
Similar to typical Dendritic patterns, all Nix files in the `modules` directory are automatically imported, meaning their physical location does not affect the build outcome. However, the entire architecture system is organized through hierarchical naming of flake-parts modules, which inherently maintains a consistent directory structure across the system. 

The overall module structure are shown below.
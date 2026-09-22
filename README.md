# dotfiles

This repository houses my dotfiles across all my systems, and is managed by [chezmoi](https://chezmoi.io). This repository also includes scripts which install my most-used packages across certain systems; `chezmoi` will detect the platform automatically and run the related scripts.

Though far from it right now, the goal of this project is to expedite the configuration of my environments across platforms to reduce the amount of setup time. This is largely motivated by my inability to stick with an operating system for longer than one month at a time.

## Setup

Install `chezmoi` with your package manager, then run:

```bash
chezmoi init --apply yeenbean
```

This repository is mirrored to my personal forge. In theory, `chezmoi` can set it up using that source as well with this command:

```bash
chezmoi init --apply https://git.skibidi.ong/ZIMA/dotfiles.git
```

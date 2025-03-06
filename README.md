
# Setup

This repository contains my personal configuration files for various tools and utilities I use in my environment.  
Follow these steps to set up the configuration files on your system.

## Prerequisites
- **fzf**: A command-line fuzzy finder to make interactive selection easy and efficient.
- **stow**: A symlink farm manager to manage dotfiles and configurations in a clean and organized manner.

## Installing `stow`:
```bash
sudo apt install stow
```

## Installing `fzf`

`fzf` is an essential tool used in the configuration for directory selection. Follow the steps below to install `fzf` from the official GitHub repository.

  #### Steps to Install `fzf`:
  
  To install `fzf` from GitHub, first clone the repository to your local machine:
  
  ```bash
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install

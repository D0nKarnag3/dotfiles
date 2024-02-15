#!/usr/bin/env bash

mkdir -p "$HOME/.config" && stow -t "$HOME" -S "nvim"

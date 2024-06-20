#!/bin/sh
git clone https://github.com/DUB1401/TLauncher-Flatpak
cd TLauncher-Flatpak
flatpak install flathub org.flatpak.Builder -y
flatpak install flathub org.freedesktop.Sdk/x86_64/23.08 -y
flatpak install flathub org.freedesktop.Sdk.Extension.openjdk21/x86_64/23.08 -y
flatpak run org.flatpak.Builder --install --user build-dir org.tlauncher.TLauncher.json
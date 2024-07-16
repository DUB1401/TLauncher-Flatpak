#!/bin/sh
flatpak install flathub org.flatpak.Builder -y
flatpak install flathub org.freedesktop.Sdk/x86_64/23.08 -y
flatpak install flathub org.freedesktop.Sdk.Extension.openjdk21/x86_64/23.08 -y
flatpak run org.flatpak.Builder build org.tlauncher.TLauncher.json
flatpak build-export export build
flatpak build-bundle export TLauncher.flatpak org.tlauncher.TLauncher --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo

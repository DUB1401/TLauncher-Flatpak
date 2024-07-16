#!/bin/sh
flatpak install flathub org.flatpak.Builder -y
flatpak install flathub org.freedesktop.Sdk/x86_64/23.08 -y
flatpak install flathub org.freedesktop.Sdk.Extension.openjdk21/x86_64/23.08 -y
flatpak run org.flatpak.Builder --install --user build org.tlauncher.TLauncher.json
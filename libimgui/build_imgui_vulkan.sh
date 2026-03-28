#!/bin/bash
set -e

echo "--- Installiere Abhängigkeiten (SDL3 & Vulkan) ---"
# Hinweis: SDL3 ist in älteren Ubuntu-Versionen evtl. nicht in den Standard-Repos.
# Falls 'libsdl3-dev' nicht gefunden wird, muss es ggf. selbst gebaut werden.
#sudo apt-get update
#sudo apt-get install -y build-essential cmake git libvulkan-dev vulkan-tools

# Falls SDL3 noch nicht als Paket existiert, hier ein Check
if ! pkg-config --exists sdl3; then
    echo "Warnung: SDL3 wurde nicht über apt gefunden. Stelle sicher, dass SDL3 installiert ist."
fi

# Klone imgui falls nicht vorhanden
if [ ! -d "imgui" ]; then
    echo "--- Klone imgui Repository ---"
    git clone https://github.com/ocornut/imgui.git
fi

# Build-Ordner erstellen
mkdir -p build
cd build

echo "--- Konfiguriere und baue Library ---"
cmake ..
make -j$(nproc)

sudo make install

echo "--- Fertig! ---"
echo "Statische Library liegt unter: build/libimgui_lib.a"

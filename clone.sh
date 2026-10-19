#!/bin/bash
set -e

echo "=== Iniciando descarga directa para Saipan (Moto G50 5G) ==="

# 1. Limpiar directorio previo
rm -rf kernel
mkdir -p kernel/clang

# 2. Clonar el kernel de Motorola (que ya vimos que descarga perfecto)
echo "Clonando kernel-mtk de Motorola..."
git clone --depth=1 -b MMI-S1RS32.38-20-9 https://github.com/MotorolaMobilityLLC/kernel-mtk kernel

# 3. Descargar Clang directamente mediante un archivo comprimido con wget
echo "Descargando toolchain Clang..."
wget -O clang.tar.gz https://github.com/LineageOS/android_prebuilts_clang_host_linux-x86_clang-r416183b/archive/refs/heads/lineage-18.1.tar.gz

echo "Descomprimiendo Clang en su carpeta..."
tar -xzf clang.tar.gz -C kernel/clang --strip-components=1
rm -f clang.tar.gz

echo "=== ¡Clonación y descarga completadas con éxito! ==="

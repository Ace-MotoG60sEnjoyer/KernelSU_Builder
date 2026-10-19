#!/bin/bash
set -e

echo "=== Iniciando descarga directa para Saipan (Moto G50 5G) ==="

# 1. Limpiar directorio previo por completo
rm -rf kernel

# 2. Clonar PRIMERO el kernel de Motorola
echo "Clonando kernel-mtk de Motorola..."
git clone --depth=1 -b MMI-S1RS32.38-20-9 https://github.com/MotorolaMobilityLLC/kernel-mtk kernel

# 3. Crear la carpeta clang y descargar Clang DESPUÉS
echo "Descargando toolchain Clang..."
mkdir -p kernel/clang
wget -O clang.tar.gz https://github.com/LineageOS/android_prebuilts_clang_host_linux-x86_clang-r416183b/archive/refs/heads/lineage-18.1.tar.gz

echo "Descomprimiendo Clang en su carpeta..."
tar -xzf clang.tar.gz -C kernel/clang --strip-components=1
rm -f clang.tar.gz

echo "=== ¡Clonación y descarga completadas con éxito! ==="

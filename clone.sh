#!/bin/bash
set -e

echo "=== Iniciando descarga directa para Saipan (Moto G50 5G) ==="

# 1. Limpiar directorio previo
rm -rf kernel

# 2. Clonar el kernel de Motorola
echo "Clonando kernel-mtk de Motorola..."
git clone --depth=1 -b MMI-S1RS32.38-20-9 https://github.com/MotorolaMobilityLLC/kernel-mtk kernel

# 3. Descargar toolchain Clang desde una fuente tarball que SÍ existe
echo "Descargando toolchain Clang..."
mkdir -p kernel/clang
wget -O clang.tar.gz https://github.com/kdrag0n/android_prebuilts_clang_host_linux-x86_clang-r383902/archive/refs/heads/master.tar.gz

echo "Descomprimiendo Clang..."
tar -xzf clang.tar.gz -C kernel/clang --strip-components=1
rm -f clang.tar.gz

echo "=== ¡Clonación y descarga completadas con éxito! ==="

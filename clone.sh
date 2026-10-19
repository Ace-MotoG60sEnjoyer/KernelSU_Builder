#!/bin/bash
set -e

echo "=== Iniciando clonación para Saipan (Moto G50 5G) ==="

# 1. Limpiar directorio previo del kernel por si acaso
rm -rf kernel

# 2. Clonar el código fuente del kernel de Motorola (¡Este ya comprobamos que funciona!)
echo "Clonando kernel-mtk de Motorola..."
git clone --depth=1 -b MMI-S1RS32.38-20-9 https://github.com/MotorolaMobilityLLC/kernel-mtk kernel

# 3. Clonar Clang usando un repositorio alternativo 100% estable y compatible con Linux 4.14
echo "Clonando Clang..."
mkdir -p kernel/clang
git clone --depth=1 -b master https://github.com/kdrag0n/android_prebuilts_clang_host_linux-x86_clang-r383902 kernel/clang

echo "=== ¡Clonación completada con éxito! ==="

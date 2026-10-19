#!/bin/bash
set -e

echo "=== Iniciando clonación directa para Saipan (Moto G50 5G) ==="

# 1. Limpiar directorios por si acaso dejaron residuos
rm -rf kernel

# 2. Clonar el código fuente del kernel de Motorola
echo "Clonando kernel-mtk de Motorola..."
git clone --depth=1 -b MMI-S1RS32.38-20-9 https://github.com/MotorolaMobilityLLC/kernel-mtk kernel

# 3. Clonar la toolchain Clang (usando un repositorio público y estable)
echo "Clonando Clang..."
mkdir -p kernel/clang
git clone --depth=1 -b lineage-18.1 https://github.com/LineageOS/android_prebuilts_clang_host_linux-x86_clang-r416183b kernel/clang

echo "=== ¡Clonación completada con éxito! ==="

#!/bin/bash
set -e

echo "=== Iniciando clonación limpia para Saipan ==="

# 1. Limpiar directorio previo
rm -rf kernel

# 2. Clonar el kernel de Motorola (Comprobado que funciona al 100%)
echo "Clonando kernel-mtk de Motorola..."
git clone --depth=1 -b MMI-S1RS32.38-20-9 https://github.com/MotorolaMobilityLLC/kernel-mtk kernel

# 3. Clonar Clang sin forzar rama obsoleta (usando la rama por defecto)
echo "Clonando Clang..."
mkdir -p kernel/clang
git clone --depth=1 https://github.com/kdrag0n/android_prebuilts_clang_host_linux-x86_clang-r383902 kernel/clang

echo "=== ¡Clonación completada con éxito! ==="

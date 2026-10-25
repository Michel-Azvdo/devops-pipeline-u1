#!/usr/bin/env bash
# Simula um deploy: copia o código para build/ e gera um artefato .zip
set -euo pipefail

echo "Iniciando deploy simulado..."
rm -rf build artefato.zip
mkdir -p build
cp -r src build/
zip -r artefato.zip build > /dev/null
echo "Artefato gerado: artefato.zip"
echo "Deploy concluído com sucesso!"

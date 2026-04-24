#!/bin/bash

echo "Memulai Build & Obfuscation..."
echo "Mode: Aman dari Windows Defender (Base64 & Mangled)"

FILES=(
    "app"
    "config/settings"
    "core/message"
    "core/warming"
    "services/ai"
    "services/whatsapp"
    "utils/helpers"
    "utils/logger"
)

for file in "${FILES[@]}"; do
    if [ -f "${file}-original.js" ]; then
        echo "[+] Memproses: ${file}-original.js -> ${file}.js"
        javascript-obfuscator "${file}-original.js" --output "${file}.js" --compact true --control-flow-flattening true --control-flow-flattening-threshold 0.5 --identifier-names-generator mangled --string-array true --string-array-encoding base64 --split-strings true --self-defending false --dead-code-injection false
    else
        echo "[-] Lewati: ${file}-original.js tidak ditemukan."
    fi
done

echo ""
echo "Selesai! Semua file berhasil di-obfuscate dan siap untuk HANN X7 V7.0.0 PREMIUM."

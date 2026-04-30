#!/bin/bash
clear
printf "\n"
printf "\e[1;36m  ╭─── \e[1;93m[ HANNX7 AI ENGINE ]\e[1;36m ─────────────────────\e[0m\n"

if [ ! -f "hann-engine.gguf" ]; then
    printf "\e[1;36m  │ \e[1;91m✘ ERROR  :\e[0m \e[1;97mFile Engine Tidak Ditemukan!\e[0m\n"
    printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mSOLUSI  :\e[0m \e[1;96mJalankan 'bash setup-ai.sh' dulu.\e[0m\n"
    printf "\e[1;36m  ╰──────────────────────────────────────────────\e[0m\n\n"
    exit 1
fi

printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mACTION  :\e[0m \e[1;93mMembersihkan Sesi Lama...\e[0m\n"
pkill llama-server > /dev/null 2>&1
sleep 1

printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mPROCESS :\e[0m \e[1;96mLoading Llama 3.2 ke Memori...\e[0m\n"
llama-server -m hann-engine.gguf --host 127.0.0.1 --port 11434 -c 2048 --n-threads 8 > /dev/null 2>&1 &

sleep 3
printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mSTATUS  :\e[0m \e[1;92mONLINE SEPENUHNYA\e[0m\n"
printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mENDPOINT:\e[0m \e[1;92mhttp://127.0.0.1:11434\e[0m\n"
printf "\e[1;36m  ╰──────────────────────────────────────────────\e[0m\n"
printf "  \e[1;97m➜ Jangan tutup tab ini selama bot berjalan.\e[0m\n\n"

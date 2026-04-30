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

printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mPROCESS :\e[0m \e[1;96mLoading Qwen 2.5 ke Memori...\e[0m\n"
printf "\e[1;36m  ╰──────────────────────────────────────────────\e[0m\n"
printf "  \e[1;93m(Log Mesin AI Akan Muncul di Bawah. Jangan Tutup Tab Ini!)\e[0m\n\n"

llama-server -m hann-engine.gguf --host 127.0.0.1 --port 11434 -c 2048

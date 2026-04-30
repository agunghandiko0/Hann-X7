#!/bin/bash
clear
printf "\n"
printf "\e[1;36m  ╭─── \e[1;93m[ HANNX7 AUTO UPDATER ]\e[1;36m ──────────────────\e[0m\n"
printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mACTION  :\e[0m \e[1;96mMenarik Pembaruan (Git)...\e[0m\n"
printf "\e[1;36m  ╰──────────────────────────────────────────────\e[0m\n"

git pull

printf "\n\e[1;36m  ╭──────────────────────────────────────────────\e[0m\n"
printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mACTION  :\e[0m \e[1;93mMemperbarui Dependencies (NPM)...\e[0m\n"
printf "\e[1;36m  ╰──────────────────────────────────────────────\e[0m\n"

npm install

printf "\n\e[1;36m  ╭──────────────────────────────────────────────\e[0m\n"
printf "\e[1;36m  │ \e[1;95m⚡\e[0m \e[1;97mSTATUS  :\e[0m \e[1;92mPembaruan Selesai 100%%\e[0m\n"
printf "\e[1;36m  ╰──────────────────────────────────────────────\e[0m\n\n"

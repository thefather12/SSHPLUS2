#!/bin/bash
[[ $(screen -list| grep -c 'bot_teste') == '0' ]] && {
    clear
    echo -e "\E[44;1;37m     ACTIVACION DEL BOT SSH DE PRUEBA     \E[0m"
    echo ""
    echo -ne "\n\033[1;32mINGRESE SU TOKEN\033[1;37m: "
    read token
    clear
    echo ""
    echo -e "\033[1;32mINICIANDO BOT DE PUEVA. \033[0m\n"
    cd $HOME/BOT
    rm -rf $HOME/BOT/botssh
    wget https://github.com/thefather12/SSHPLUS/raw/main/Sistema/botssh >/dev/null 2>&1
    chmod 777 botssh
    echo ""
    sleep 1
    screen -dmS bot_teste ./botssh $token > /dev/null 2>&1
    clear
    echo "BOT ACTIVADO"
    menu
} || {
    screen -r -S "bot_teste" -X quit
    clear
    echo "BOT DESACTIVADO"
    menu
}

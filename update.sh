#!/bin/bash
#!/bin/bash
# Color Validation
Lred='\e[1;91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
green='\e[32m'
RED='\033[0;31m'
NC='\033[0m'
BGBLUE='\e[1;44m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
# ===================
echo ''
clear
echo ''
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                ⚡ ZXVLUKS STORE  ⚡                "$NC
echo -e "$green.........................................................."$NC
echo -e "               Script by Vluks Store" | lolcat
echo -e "                    CONTACT TELEGRAM"$NC | lolcat
echo -e "                       @mannnn_07"$NC | lolcat
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                       Tunggu 1 Detik!                    "$NC
echo -e "$green.........................................................."$NC
sleep 1
clear
if [ "${EUID}" -ne 0 ]; then
                echo "You need to run this script as root"
                exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
                echo "OpenVZ is not supported"
                exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
VALIDITY() {
    today=$(date -d "0 days" +"%Y-%m-%d")
    Exp1=$(curl https://raw.githubusercontent.com/wak-vluks/izinvps/main/ip | grep $MYIP | awk '{print $4}')
    if [[ $today < $Exp1 ]]; then
        echo -e "\e[32mAUTOSCRIPT SUKSES..\e[0m"
        sleep 5
    else
    echo -e "\e[31mScript Anda Telah Expired !!\e[0m";
    echo -e "\e[31mTolong Renew Dengan Owner Script @mannnn_07\e[0m"
    exit 0
    fi
}
IZIN=$(curl https://raw.githubusercontent.com/wak-vluks/izinvps/main/ip | awk '{print $5}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermohonan diterima...\e[0m"
    VALIDITY
else
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                ⚡ ZXVLUKS STORE ⚡                "$NC
echo -e "$green.........................................................."$NC
echo -e "$RED                PERMISSION DENIED"$NC
echo -e "               Script by Vluks Store" | lolcat
echo -e "                    CONTACT TELEGRAM"$NC | lolcat
echo -e "                       @mannnn_07"$NC | lolcat
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                       Tunggu To Exit!                    "$NC
echo -e "$green.........................................................."$NC
sleep 1
    rm -f main.sh
    exit 0
fi
clear
CLNAME=$(curl https://raw.githubusercontent.com/wak-vluks/izinvps/main/ip | grep $MYIP | awk '{print $2}')
if [ $MYIP = $CLNAME ]; then
echo ""
fi
clear
echo -e "\e[32mloading...\e[0m"
clear

dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
REPO="https://raw.githubusercontent.com/wak-vluks/abc/main/"
echo -e " [INFO] Downloading Update File" | lolcat
sleep 2
rm -rf /tmp/menu
wget -O /tmp/menu-master.zip "${REPO}config/menu.zip" >/dev/null 2>&1
    mkdir /tmp/menu
    7z e  /tmp/menu-master.zip -o/tmp/menu/ >/dev/null 2>&1
    chmod +x /tmp/menu/*
    mv /tmp/menu/* /usr/sbin/
echo -e " [INFO] Update Successfully" | lolcat
mkdir -p /etc/ssh
mkdir -p /etc/vmx
mkdir -p /etc/vls
mkdir -p /etc/tr
mkdir -p /etc/ss
rm -rf update.sh
sleep 2
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
exit

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
echo -e "$BGBLUE                ⚡ PREMIUM SCRIPT ⚡                "$NC
echo -e "$green.........................................................."$NC
echo -e "               Autoscript Mod By Vluks" | lolcat
echo -e "                    CONTACT TELEGRAM"$NC | lolcat
echo -e "                       @mannnn_07"$NC | lolcat
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                       Tunggu 5 Detik!                    "$NC
echo -e "$green.........................................................."$NC
sleep 5
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
    echo -e "\e[31mTolong Renew Dengan Owner Script @tau_samawa\e[0m"
    exit 0
    fi
}
IZIN=$(curl https://raw.githubusercontent.com/wak-vluks/izinvps/main/ip | awk '{print $5}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermohonan diterima...\e[0m"
    VALIDITY
else
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                ⚡ PREMIUM SCRIPT ⚡                "$NC
echo -e "$green.........................................................."$NC
echo -e "$RED                PERMISSION DENIED/AKSES DITOLAK"$NC
echo -e "               Autoscript Mod By Vlukss" | lolcat
echo -e "                    CONTACT TELEGRAM"$NC | lolcat
echo -e "                       @mannnn_07"$NC | lolcat
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                       Tunggu To Exit!                    "$NC
echo -e "$green.........................................................."$NC
sleep 3
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
REPO="https://raw.githubusercontent.com/wak-vluks/abc/main/"
wget -q -O /etc/systemd/system/limitvmess.service "${REPO}limit/limitvmess.service" && chmod +x limitvmess.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvless.service "${REPO}limit/limitvless.service" && chmod +x limitvless.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limittrojan.service "${REPO}limit/limittrojan.service" && chmod +x limittrojan.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitshadowsocks.service "${REPO}limit/limitshadowsocks.service" && chmod +x limitshadowsocks.service >/dev/null 2>&1
wget -q -O /etc/xray/limit.vmess "${REPO}limit/vmess" >/dev/null 2>&1
wget -q -O /etc/xray/limit.vless "${REPO}limit/vless" >/dev/null 2>&1
wget -q -O /etc/xray/limit.trojan "${REPO}limit/trojan" >/dev/null 2>&1
wget -q -O /etc/xray/limit.shadowsocks "${REPO}limit/shadowsocks" >/dev/null 2>&1
chmod +x /etc/xray/limit.vmess
chmod +x /etc/xray/limit.vless
chmod +x /etc/xray/limit.trojan
chmod +x /etc/xray/limit.shadowsocks
systemctl daemon-reload
systemctl enable --now limitvmess
systemctl enable --now limitvless
systemctl enable --now limittrojan
systemctl enable --now limitshadowsocks
# systemctl start limitvmess
# systemctl start limitvless
# systemctl start limittrojan
# systemctl start limitshadowsocks
# systemctl restart limitvmess
# systemctl restart limitvless
# systemctl restart limittrojan
# systemctl restart limitshadowsocks

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
echo -e "$BGBLUE                ⚡ PREMIUM SCRIPT VLUKS ⚡                "$NC
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
clear
echo -e "\e[32mloading...\e[0m"
clear
GIT_CMD="https://github.com/errorcode86/bbrplus/raw/master/Debian9/x86_64/"
startbbr() {
    if [[ $(echo 4.14.129-bbrplus | awk -F'.' '{print $1}') -ge "5" ]]; then
	    echo "net.core.default_qdisc=cake" >> /etc/sysctl.conf
	    echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
        echo "net.ipv4.icmp_echo_ignore_all = 0" >>/etc/sysctl.conf
        echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" >>/etc/sysctl.conf
        echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" >>/etc/sysctl.conf
        echo "fs.file-max = 1000000" >>/etc/sysctl.conf
        echo "fs.inotify.max_user_instances = 8192" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_tw_reuse = 1" >>/etc/sysctl.conf
        echo "net.ipv4.ip_local_port_range = 1024 65535" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_rmem = 16384 262144 8388608" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_wmem = 32768 524288 16777216" >>/etc/sysctl.conf
        echo "net.core.somaxconn = 8192" >>/etc/sysctl.conf
        echo "net.core.rmem_max = 16777216" >>/etc/sysctl.conf
        echo "net.core.wmem_max = 16777216" >>/etc/sysctl.conf
        echo "net.core.wmem_default = 2097152" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_max_tw_buckets = 5000" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_max_syn_backlog = 10240" >>/etc/sysctl.conf
        echo "net.core.netdev_max_backlog = 10240" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_slow_start_after_idle = 0" >>/etc/sysctl.conf
        echo "net.ipv4.ip_forward = 1" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_icmp_timeout=10" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_tcp_timeout_close=10" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_tcp_timeout_close_wait=10" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_tcp_timeout_established=600" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_tcp_timeout_fin_wait=10" >>/etc/sysctl.conf
    else
	    echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
	    echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
        echo "net.ipv4.icmp_echo_ignore_all = 0" >>/etc/sysctl.conf
        echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" >>/etc/sysctl.conf
        echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" >>/etc/sysctl.conf
        echo "fs.file-max = 1000000" >>/etc/sysctl.conf
        echo "fs.inotify.max_user_instances = 8192" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_tw_reuse = 1" >>/etc/sysctl.conf
        echo "net.ipv4.ip_local_port_range = 1024 65535" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_rmem = 16384 262144 8388608" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_wmem = 32768 524288 16777216" >>/etc/sysctl.conf
        echo "net.core.somaxconn = 8192" >>/etc/sysctl.conf
        echo "net.core.rmem_max = 16777216" >>/etc/sysctl.conf
        echo "net.core.wmem_max = 16777216" >>/etc/sysctl.conf
        echo "net.core.wmem_default = 2097152" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_max_tw_buckets = 5000" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_max_syn_backlog = 10240" >>/etc/sysctl.conf
        echo "net.core.netdev_max_backlog = 10240" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_slow_start_after_idle = 0" >>/etc/sysctl.conf
        echo "net.ipv4.ip_forward = 1" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_max = 524288" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_icmp_timeout=10" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_tcp_timeout_close=10" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_tcp_timeout_close_wait=10" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_tcp_timeout_established=600" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_tcp_timeout_fin_wait=10" >>/etc/sysctl.conf
    fi
}
installbbrplus(){
		cd /tmp
		wget -N --no-check-certificate https://github.com/UJX6N/bbrplus-5.15/releases/download/5.15.96-bbrplus/Debian-Ubuntu_Required_linux-image-5.15.96-bbrplus_5.15.96-bbrplus-1_amd64.deb \
        -O bbrplus_5.15.86_amd64.deb  >/dev/null 2>&1
		wget -N --no-check-certificate https://github.com/UJX6N/bbrplus-5.15/releases/download/5.15.96-bbrplus/Debian-Ubuntu_Optional_linux-headers-5.15.96-bbrplus_5.15.96-bbrplus-1_amd64.deb \
        -O bbrplus_5.15.86-headers_amd64.deb >/dev/null 2>&1
		dpkg -i bbrplus_5.15.96_amd64.deb >/dev/null 2>&1
		dpkg -i bbrplus_5.15.96-headers_amd64.deb >/dev/null 2>&1
}
installbbrplus
startbbr

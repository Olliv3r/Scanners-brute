#!/bin/bash
#
#
clear


v=`setterm --foreground green`
V=`setterm --foreground red`
a=`setterm --foreground blue`
y=`setterm --foreground yellow`

menu_return() {
	setterm --foreground green
	echo "[99]> Return"
	echo "[00]> Exit"
}

Exit_Program() {
	setterm --foreground green
	echo "Stopping..."
	sleep 2
	exit
}

returning_menu() {
	cd ; cd LIMUX;./Nmap-auto.sh
}
setterm --foreground cyan
toilet NMAP
echo "$v Author : $a josimar"
echo "$v Channel : $a Tio olive"
echo "$v Gmail : $V josimarsilva.js.21.js@gmail.com"
echo "$a---------------------------------------------"
echo "$a---------------------------------------------"
setterm --foreground magenta
echo "      [1]-> Scanner-Ping"
echo "      [2]-> Service/Versao"
echo "      [3]-> smtp scan Port"
echo "      [4]-> ftp-brute"
echo "      [5]-> Ssh scan Port"
echo "      [6]-> Mysql scan Port"
echo "      [7]-> Ftp scan"
echo "      [8]-> Http scan Port"
echo "      [0]-> Exit"
setterm --foreground yellow
echo -n "Nmap-Auto: "
read resp
if test $resp = "1";then
	clear
	setterm --foreground cyan
	figlet Nmap
	echo -n "Host ou IP> "
	read host_IP
	nmap -v $host_IP
	menu_return
	echo -n "Nmap-> "
	read me
	if test $me = "99";then
		returning_menu
	elif test $me = "00";then
		Exit_Program
	fi
	
elif test $resp = "2";then
	clear
	setterm --foreground cyan
	figlet Nmap
	echo -n "Host ou IP> "
	read host_IP
	nmap -v -sV $host_IP
	menu_return
        echo -n "Nmap-> "
        read me
        if test $me = "99";then
                returning_menu
        elif test $me = "00";then
                Exit_Program
        fi
elif test $resp = "3";then
	clear
	setterm --foreground cyan
	figlet Nmap
	echo -n "Host ou IP> "
	read host_IP
	nmap -v -p 465 $host_IP
	menu_return
        echo -n "Nmap-> "
        read me
        if test $me = "99";then
                returning_menu
        elif test $me = "00";then
                Exit_Program
        fi
elif test $resp = "4";then
	clear
	setterm --foreground cyan
	figlet Nmap
	echo -n "Host ou IP> "
	read host_IP
	nmap --script vuln $host_IP
	menu_return                                        echo -n "Nmap-> "
	read me
        if test $me = "99";then
		returning_menu
        elif test $me = "00";then
		Exit_Program
	fi
elif test $resp = "5";then
	setterm --foreground cyan
	echo -n "Host or IP: "
	read host_ip
	nmap -v  -p 22 $host_ip
	menu_return
        echo -n "Nmap-> "
        read me
        if test $me = "99";then
                returning_menu
        elif test $me = "00";then
                Exit_Program
	fi
elif test $resp = "6";then
	setterm --foreground cyan
	echo -n "Host or IP: "
	read host_ip
	nmap -v -p 3306 $host_ip
	menu_return
        echo -n "Nmap-> "
        read me
        if test $me = "99";then
                returning_menu
        elif test $me = "00";then
                Exit_Program
	fi
elif test $resp = "7";then
	setterm --foreground cyan
	echo -n "Host or IP: "
	read host_ip
	nmap -v -p 21 $host_ip
	menu_return
        echo -n "Nmap-> "
        read me
        if test $me = "99";then
                returning_menu
        elif test $me = "00";then
                Exit_Program
	fi
elif test $resp = "8";then
	setterm --foreground cyan
	echo -n "Host or IP: "
	read host_ip
	nmap -v -p 80 $host_ip
	menu_return
        echo -n "Nmap-> "
        read me
        if test $me = "99";then
                returning_menu
        elif test $me = "00";then
                Exit_Program
	fi
elif test $resp = "0";then
	echo "Stopping..."
	sleep 2
	exit
fi

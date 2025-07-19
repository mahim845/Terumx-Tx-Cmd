#!/data/data/com.termux/files/usr/bin/bash

# Color settings
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

# Banner
clear
echo -e "${RED}"
figlet -f big "TERMUX"
echo -e "${NC}"
echo -e "${CYAN}Creator   : Mahim${NC}"
echo -e "${CYAN}Tools     : Termux Tx Cmd${NC}"
echo -e "${CYAN}==============================${NC}"
echo ""

# Tools Menu
echo -e "${GREEN}[1] Nmap"
echo -e "[2] Hydra"
echo -e "[3] SQLmap"
echo -e "[4] Ngrok"
echo -e "[5] Wget"
echo -e "[6] Python"
echo -e "[7] Git"
echo -e "[8] Curl"
echo -e "[9] Tor"
echo -e "[10] Figlet${NC}"
echo ""
read -p "Choose a tool (1-10): " tool

# Tool actions
case $tool in
  1)
    pkg install nmap -y
    echo -e "${CYAN}Nmap installed.${NC}"
    ;;
  2)
    pkg install hydra -y
    echo -e "${CYAN}Hydra installed.${NC}"
    ;;
  3)
    pkg install sqlmap -y
    echo -e "${CYAN}SQLmap installed.${NC}"
    ;;
  4)
    pkg install wget -y
    wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
    unzip ngrok-stable-linux-arm.zip
    chmod +x ngrok
    echo -e "${CYAN}Ngrok downloaded.${NC}"
    ;;
  5)
    pkg install wget -y
    echo -e "${CYAN}Wget installed.${NC}"
    ;;
  6)
    pkg install python -y
    echo -e "${CYAN}Python installed.${NC}"
    ;;
  7)
    pkg install git -y
    echo -e "${CYAN}Git installed.${NC}"
    ;;
  8)
    pkg install curl -y
    echo -e "${CYAN}Curl installed.${NC}"
    ;;
  9)
    pkg install tor -y
    echo -e "${CYAN}Tor installed.${NC}"
    ;;
  10)
    pkg install figlet -y
    echo -e "${CYAN}Figlet installed.${NC}"
    ;;
  *)
    echo -e "${RED}Invalid option! Please choose 1-10.${NC}"
    ;;
esac

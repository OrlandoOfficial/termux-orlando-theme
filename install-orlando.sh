#!/data/data/com.termux/files/usr/bin/bash

# 🌟 Termux Neon Setup: Orlando Official Theme

# Step 1: Update & Install Tools
pkg update && pkg upgrade -y
pkg install figlet toilet neofetch ruby git -y
gem install lolcat

# Step 2: Custom Bashrc with Neon Theme
cat > ~/.bashrc << 'EOF'
clear
toilet -f pagga "Orlando" | lolcat
toilet -f mono12 -F gay "Official"
echo
neofetch --ascii_distro Arch | lolcat
echo
echo -e "\e[1;36m<<< 🔥 Welcome to Termux, Orlando Official 🔥 >>>\e[0m" | lolcat
echo
echo -e "\e[1;35m📅 Tanggal: $(date '+%A, %d %B %Y')    ⏰ Jam: $(date '+%H:%M:%S')\e[0m" | lolcat
cp ~/.bashrc /sdcard/bashrc_orlando_autobackup.txt
EOF

# Step 3: Apply Immediately
source ~/.bashrc

#!/data/data/com.termux/files/usr/bin/bash

# ========================================================
# 🛠️  Termux Installer by OrlandoOfficial
# 📌 https://github.com/OrlandoOfficial/termux-theme-orlando
# ========================================================

echo -e "\n📦 Memulai instalasi tema Orlando Official...\n"

# Step 1: Update & Install Dependencies
pkg update -y && pkg upgrade -y
for pkg in figlet toilet neofetch ruby git; do
  command -v $pkg >/dev/null 2>&1 || pkg install $pkg -y
done
gem install lolcat --no-document

# Step 2: Pasang tema dari template
if [ ! -f "bashrc_template" ]; then
  echo "❌ Gagal: File bashrc_template tidak ditemukan."
  exit 1
fi

cp bashrc_template ~/.bashrc
cp ~/.bashrc ~/.orlando_bashrc_backup.txt
chmod 444 ~/.bashrc

# Step 3: Tandai bahwa telah terinstal
touch "$HOME/.termux_orlando_installed"

echo -e "\n✅ Instalasi selesai!"
echo -e "🔄 Silakan buka ulang Termux untuk melihat tampilan baru.\n"

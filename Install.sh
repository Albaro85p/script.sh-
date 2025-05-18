#!/bin/bash

echo "🛠️ Installing sysupdate..."

if [ ! -f "actualizar.sh" ]; then
  echo "❌ Error: actualizar.sh not found in this directory."
  exit 1
fi

sudo cp actualizar.sh /usr/local/bin/sysupdate
sudo chmod +x /usr/local/bin/sysupdate

echo "✅ Script installed globally as: sysupdate"

read -p "Would you also like to add an alias to ~/.bashrc? (y/n): " resp
if [ "$resp" = "y" ]; then
  echo "alias sysupdate='/usr/local/bin/sysupdate'" >> ~/.bashrc
  source ~/.bashrc
  echo "🔁 Alias added to ~/.bashrc"
fi

echo "🚀 Done. You can now run: sysupdate"

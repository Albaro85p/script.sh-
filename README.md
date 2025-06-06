#  Linux System Updater Script

A simple and interactive **Bash script** that helps you safely update your **Debian-based Linux system** (Kali, Ubuntu, Parrot, etc.) with just one command.

---

##  Features

- Asks for user confirmation before updating  
- Runs essential system maintenance commands:
  - `apt update`
  - `apt upgrade -y`
  - `apt autoremove -y`
  - `apt autoclean -y`
- Easy to run, clean, and lightweight
- Beginner-friendly and safe for daily/weekly use

---

##  How to Use

```bash
git clone https://github.com/your-user/linux-updater.git
cd linux-updater
chmod +x actualizar.sh
./actualizar.sh

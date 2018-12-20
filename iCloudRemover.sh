if [ "$EUID" -ne 0 ]; then
  echo "Please login as root user before executing this script."
  exit
fi
reset
echo "iCloud Remover by Liber1an for iOS jailbreaked"
read -p "Press enter to continue."
echo "Removing iCloud..."
rm -f /var/mobile/Library/Accounts/Accounts3.sqlite
rm -f /var/mobile/Library/Accounts/Accounts3.sqlite-wal
rm -f /var/mobile/Library/Accounts/Accounts3.sqlite-shm
rm -rf /var/mobile/Library/Accounts/
echo "iCloud has been removed!"
echo "Respring..."
killall SpringBoard
#!bin/bash
read -p "enter the backup dir:" backup
read -p "enter the source dir:" source
sudo zip "$backup/backup.zip" "$source"
echo "backup is created in $backup/backup.zip"

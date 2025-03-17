#!/bin/bash

echo "User Management Script"
echo "1. Create User"
echo "2. List Users"
echo "3. Set Password"
echo "4. Delete User"
echo "5. Exit"

read -p "Choose an option (1-5): " option

case $option in
    1)
        read -p "Enter username to create: " username
        sudo useradd "$username"
        echo "User '$username' created successfully!"
        ;;
    2)
        echo "Listing all users:"
        cut -d: -f1 /etc/passwd
        ;;
    3)
        read -p "Enter username to set password: " username
        sudo passwd "$username"
        ;;
    4)
        read -p "Enter username to delete: " username
        sudo userdel -r "$username"
        echo "User '$username' deleted successfully!"
        ;;
    5)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid option! Please choose between 1-5."
        ;;
esac

#!/bin/bash

line="==================================="
echo $line
echo -n "Enter the website to be scanned: "
read dns
echo $line

echo "Choose the type of scan:"
echo "1. OS Detection"
echo "2. Port Scanning"
echo "3. Both"
read -p "Enter your choice (1/2/3): " choice

case $choice in
    1)
        echo "Performing OS Detection..."
        sudo nmap -O $dns
        ;;
    2)
        echo "Performing Port Scanning..."
        sudo nmap -p- $dns
        ;;
    3)
        echo "Performing OS Detection and Port Scanning..."
        sudo nmap -O -p- $dns
        ;;
    *)
        echo "Invalid choice. Exiting."
        ;;
esac

echo $line
echo "Scan completed."
echo $line

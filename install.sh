#!/bin/bash

gcc lf.c -o lf

sudo install -m 755 lf /usr/local/bin/

echo -ne "Installing."
sleep 0.5
echo -ne "\rInstalling.."
sleep 0.5
echo -ne "\rInstalling..."
sleep 0.5
echo -ne "\rInstalling...."
sleep 0.5

rm lf

echo -ne "\rInstallation complete. Try: lf"


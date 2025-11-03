#!/bin/bash

sudo -v

gcc lf.c -o lf

sudo install -m 755 lf /usr/local/bin/

man_path() {

	manpath | cut -d ':' -f1

}


if [ -d "$(man_path)/man1" ]; then
	sudo cp lf.1.gz "$(man_path)/man1/"
else
	sudo mkdir "$(man_path)/man1"
	sudo cp lf.1.gz "$(man_path)/man1"
fi

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


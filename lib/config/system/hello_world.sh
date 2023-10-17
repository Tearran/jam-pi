#
# Copyright (c) Authors: http://www.armbian.com/authors, info@armbian.com
#
# This file is licensed under the terms of the GNU General Public
# License version 2. This program is licensed "as is" without any
# warranty of any kind, whether express or implied.
#


# @description Armbian ascii logo.
#
# @exitcode 0  If successful.
#
# @stdout A Here Doc armbian logo
function hello_art::art_armbian() {
    clear
    
    cat << EOF

      █ █ █ █ █ █ █ █ █ █ █
     ███████████████████████
   ▄▄██                   ██▄▄
   ▄▄██    ███████████    ██▄▄
   ▄▄██   ██         ██   ██▄▄
   ▄▄██   ██         ██   ██▄▄
   ▄▄██   ██         ██   ██▄▄
   ▄▄██   █████████████   ██▄▄
   ▄▄██   ██         ██   ██▄▄
   ▄▄██   ██         ██   ██▄▄
   ▄▄██   ██         ██   ██▄▄
   ▄▄██                   ██▄▄
     ███████████████████████
      █ █ █ █ █ █ █ █ █ █ █

EOF
echo -e "\n\n"
    echo -ne " \r"
    sleep 1
    echo -ne " ■)\r"
    sleep 1
    echo -ne " ■_■)\r"
    sleep 1
    echo -ne " (⌐■_■)\r"
    sleep 1
    echo -ne " (⌐■_■)\r"
    sleep 1
    echo -ne " ( •_•)>⌐■-■  - Oh hi there,                                  \r"
    sleep 2
    echo -ne " ( •_•)       - Welcome to Armbian!                           \r"
    sleep 2
    echo -ne "  (•_•)       - This is an example for the new armbina-config!\r"
    sleep 2
    echo -ne "  (•_•)       - Armbina-config now uses metadata for the menu!\r"

    echo -e  "\n\n"
    sleep 1
    echo -ne "  exit in. 3 \r"
    sleep 1
    echo -ne "  exit in. 2 \r"
    sleep 1
    echo -ne "  exit in. 1 \r"
    sleep 1

	return 0

	}
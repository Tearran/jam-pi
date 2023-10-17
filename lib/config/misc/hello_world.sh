#
# Copyright (c) Authors: http://www.armbian.com/authors, info@armbian.com
#
# This file is licensed under the terms of the GNU General Public
# License version 2. This program is licensed "as is" without any
# warranty of any kind, whether express or implied.
#

# @description Animaiton, ascii How to make Menu entries.
#
# @exitcode 0  If successful.
#
# @stdout A Here Doc Armbian logo
function hello_config::ascii_animation() {
# Define arrays for frames, associated text, and commands
frames=(
    ")"
    "_■)"
    "(⌐■_■)"
    "( •_•)>⌐■-■"
    " (•_•)"
    "(•_•)"
    "_•)"
    "•)"
    " "
    "•) "
    "_•)"
    ")"
)

text=(
    " "    
    " "
    "Oh, hello."
    "This Hello Library example"
    "Copy the misc folder and its contents with a new name"
    "Rename new folder and about_misc.sh to local/about_local.sh"
    "Edit the about_local.sh  to \n# @description language, keyboard, and time zone."
    "This will create a new category entry in the main menu\nThe about will add the new subcategory menu"
    "\n\nThank you for watching\n"
    ""
)

commands=(
    ""
    ""
    ""
    ""
    ""
    # Add more commands as needed
)

# Loop through frames
clear
for i in "${!frames[@]}"; do
    echo -e "\e[H \n\n\n \e[K ${frames[i]}"
    echo -e "\n\n\e[K ${text[i]}\n\n\n\n"
    eval "${commands[i]}"  # Execute the command
    sleep 2
done

    echo -en "\e[999;1H"    
}

art_armbian() {   
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
                                                
    return 0
}

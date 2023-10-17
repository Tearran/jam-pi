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

    "Welcome to the Hello Library Tutorial"
    "This tutorial demonstrates how to use the Hello Library to create a new category." 
    "Copy the entire \"misc\" folder along with its contents to create a new category."
    "Rename the newly copied folder to \"local\""
    "rename the file \"about_misc.sh\" to \"about_local.sh\"."
    "Open the \"about_local.sh\" file and edit the description of the new category."
    "For example: # @description Language, keyboard, and time zone settings."
    "Main Menu will update"
    "This action will automatically create a new category entry in the main menu."
    "View the About Section"
    "Navigate to the new section in the main menu to see the new subcategory entry."
    "Thank you for following this tutorial! If you have any questions or need further assistance, feel free to reach out."
    "License This program is licensed under the terms of the GNU General Public License version 2."


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

    echo -e "\n\n\e[K ${text[i]}\n\n\n\n"
        echo -e "\e[H \n\n\n \e[K ${frames[i]}"
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

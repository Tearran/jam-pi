#
# Copyright (c) Authors: http://www.armbian.com/authors, info@armbian.com
#
# This file is licensed under the terms of the GNU General Public
# License version 2. This program is licensed "as is" without any
# warranty of any kind, whether express or implied.
#
#  utility_install_desktops related functions. See *(todo)* for more info.

# @description Hello World for Loacel io
#
#
# @exitcode 0  If successful.
#
# @stdout A Here Doc Hello World
hellworld::io(){

	cat << EOF

	Hello Armbian

EOF
	return 0

	}


#
# @description Update the system using apt-get.
#
# @exitcode 0 If successful.
# @exitcode 1 If an error occurs during the update.
#
# @stdout Information about the update process.
about_update::update_system(){

    # Perform the system update
    sudo apt-get update

    if [ $? -eq 0 ]; then
        echo "System update completed successfully."
        return 0
    else
        echo "Error occurred during system update."
        return 1
    fi

}

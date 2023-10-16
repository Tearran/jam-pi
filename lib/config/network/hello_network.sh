#
# Copyright (c) Authors: http://www.armbian.com/authors, info@armbian.com
#
# This file is licensed under the terms of the GNU General Public
# License version 2. This program is licensed "as is" without any
# warranty of any kind, whether express or implied.
#
#  utility_install_desktops related functions. See *(todo)* for more info.

# @description local network settings.
#
#
# @exitcode 0  If successful.
#
# @stdout A Here Doc readme
hello_net::see_net(){

	cat << EOF

	Hello Networking
EOF
	return 0

	}
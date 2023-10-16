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
hello_whaterver::see_whateverthisis(){

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
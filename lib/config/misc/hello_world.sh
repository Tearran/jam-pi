#!/bin/bash

# Copyright (c) Authors: http://www.armbian.com/authors, info@armbian.com
#
# This file is licensed under the terms of the GNU General Public
# License version 2. This program is licensed "as is" without any
# warranty of any kind, whether express or implied.

# @description Hello World.
#
# @exitcode 0  If successful.
#
# @stdout A Here Doc Armbian logo
function hello::see_world(){

	echo "hello world"
    return 0
}

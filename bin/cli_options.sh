#!/bin/bash
#
# Copyright (c) Authors: http://www.armbian.com/authors, info@armbian.com
#
# This file is licensed under the terms of the GNU General Public
# License version 2. This program is licensed "as is" without any
# warranty of any kind, whether express or implied.
#
#  CPU related tests.
#

LD_LIBRARY_PATH="/home/beta/.local/lib"

# Source the files relative to the script location
source "$HOME/.local/lib/bash-utility/string.sh"
source "$HOME/.local/lib/bash-utility/collection.sh"
source "$HOME/.local/lib/bash-utility/array.sh"
source "$HOME/.local/lib/bash-utility/check.sh"
source "$HOME/.local/lib/armbian-config/cpu.sh"

libpath="$HOME/.local/lib/armbian-config/cpu.sh"

readarray -t functionarray < <(grep -oP '^\w+::\w+' "$libpath")
readarray -t funnamearray < <(grep -oP '^\w+::\w+' "$libpath" | sed 's/.*:://')
readarray -t catagoryarray < <(grep -oP '^\w+::\w+' "$libpath" | sed 's/::.*//')
readarray -t descriptionarray < <(grep -oP '^# @description.*' "$libpath" | sed 's/^# @description //')

# test array
#printf '%s\n' "${functionarray[@]}"
#exit 0

see_help(){

	echo ""
	echo "Usage: ${filename%.*} [ -h | -dev ]"
	echo -e "Options:"
	echo -e "	-h  Print this help."
	echo -e "	-dev Options:"
    for i in "${!functionarray[@]}"; do
		printf '\t\t%s\t%s\n' "${functionarray[i]}" "${descriptionarray[i]}"
	done

	}

# TEST 3 
# check for -h -dev @ $1
# if -dev check @ $1 remove and shift $1 to check for x
check_opts() {
  if [ "$1" == "-dev" ]; then
    shift  # Shifts the arguments to the left, excluding the first argument ("-dev")
    function_name="$1"  # Assigns the next argument as the function name
    shift  # Shifts the arguments again to exclude the function name

    found=false

    for ((i=0; i<${#functionarray[@]}; i++)); do
      if [ "$function_name" == "${functionarray[i]}" ]; then
        found=true
        ${functionarray[i]} "$@"
        break
      fi
    done

    if [ "$found" == false ]; then
      echo "Invalid function name"
    fi

  elif [ "$1" == "-p" ]; then
    see_proposed
  else
    see_help 
  fi
}

#check_opts_test1 "$@"
check_opts "$@"

#cpu::set_freq $policy "$min_freq" "$max_freq" performance

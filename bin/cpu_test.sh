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
source "/home/beta/.local/lib/bash-utility/string.sh"
source "/home/beta/.local/lib/bash-utility/collection.sh"
source "/home/beta/.local/lib/bash-utility/array.sh"
source "/home/beta/.local/lib/bash-utility/check.sh"
source "/home/beta/.local/lib/armbian-config/cpu.sh"

# Rest of the script...
# @description Print value from collection.
#
# @example
#   collection::each "print_func"
#   #Output
#   Value in collection
print_func(){
   printf "%s\n" "$1"
   return 0
 }

# @description Check function exit code and exit script if != 0.
#
# @example
#   check_return
#   #Output
#  Nothing
check_return(){
	if [ "$?" -ne 0 ]; then
		exit 1
	fi
 }

see_cpu(){
# Get policy
declare -i  policy=$(cpu::get_policy)
printf 'Policy = %d\n' "$policy"
declare -i  min_freq=$(cpu::get_min_freq $policy)
check_return
printf 'Minimum frequency = %d\n' "$min_freq"
declare -i  max_freq=$(cpu::get_max_freq $policy)
check_return
printf 'Maximum frequency = %d\n' "$max_freq"
governor=$(cpu::get_governor $policy)
check_return
printf 'Governor = %s\n' "$governor"

# Return frequencies as array
declare -a freqs=( $(string::split "$(cpu::get_freqs $policy)" " ") )
check_return
printf "\nAll frequencies\n"

# Print all values in collection
printf "%s\n" "${freqs[@]}" | collection::each "print_func"
declare -a governors=( $(string::split "$(cpu::get_governors $policy)" " ") )
check_return
printf "\nAll governors\n"


# Print all values in collection
printf "%s\n" "${governors[@]}" | collection::each "print_func"


# Are we running as sudo?
[[ "$EUID" != 0 ]] && printf "Must call cpu::set_freq as sudo\n" && exit 1

# Before
printf "\nBefore\n"
cat /etc/default/cpufrequtils
cpu::set_freq $policy "$min_freq" "$max_freq" performance

# After
printf "\nAfter\n"
cat /etc/default/cpufrequtils

}


libpath="/home/beta/.local/lib/armbian-config/cpu.sh"
readarray -t functionarray < <(grep -oP '^\w+::\w+' "$libpath")
readarray -t funnamearray < <(grep -oP '^\w+::\w+' "$libpath" | sed 's/.*:://')
readarray -t catagoryarray < <(grep -oP '^\w+::\w+' "$libpath" | sed 's/::.*//')
readarray -t descriptionarray < <(grep -oP '^# @description.*' "$libpath" | sed 's/^# @description //')

#printf '%s\n' "${functionarray[@]}"
#exit 0
see_help(){

	echo ""
	echo "Usage: ${filename%.*} [ -h | -dev | ]"
	echo -e "Options:"
	echo -e "	-h  Print this help."
	echo -e "	-dev Options:"
    for i in "${!functionarray[@]}"; do
		printf '\t\t%s\t%s\n' "${functionarray[i]}" "${descriptionarray[i]}"
	done
	echo -e "	-cpu Options:"
    for i in "${!functionarray[@]}"; do
		printf '\t\t%s\t%s\n' "${funnamearray[i]}" "${descriptionarray[i]}"
	done

	}

check_opts()
{
    if [[ "$1" == -dev ]] ; then
        default="bash"
        local found=false
        for i in "${!functionarray[@]}"; do
            if [ "$2" == "${functionarray[i]}" ]; then
                "${functionarray[i]}"
                found=true
                break
            fi
        done
        if ! $found; then
            see_help
            exit 0
        fi
	elif [[ "$1" == "-cpu" ]] ; then
        echo -e "   "
		echo -e " TODO:"
        for i in "${!functionarray[@]}"; do
			
			printf '\t\t%s\t%s \n' "${functionarray[i]}" "${descriptions[i]}"
		done

    elif [[ "$1" == -h ]] ; then
        see_help
    else
        see_cpu
    fi
}

check_opts "$@"

#cpu::set_freq $policy "$min_freq" "$max_freq" performance



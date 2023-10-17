
# jampi-config

This script provides a menu-driven interface for executing various functions. It is designed to be a flexible tool for managing different applications and functionalities.

## Adding Functions
To add a new function, create a new .sh file in the appropriate category directory (e.g., lib/config/misc/). The file should follow the naming convention function_name.sh and include the necessary metadata in the comments.

For example:

```bash
#!/bin/bash
#
# @description My custom function.
#
# @exitcode 0  If successful.
#
# @stdout Output of the function.
function my_app::my_function() {
    echo "Hello, World!"
}
Function Metadata
@description: Briefly describe the purpose of the function.
@exitcode: Specify the exit code in case of success.
@stdout: Describe the expected output of the function.
License
This script is licensed under the terms of the GNU General Public License version 2.
```

# Welcome to the Hello Library Tutorial

This tutorial demonstrates how to use the Hello Library to create a new category. Follow the steps below to get started:

- Copy the entire "misc" folder along with its contents to create a new category.
- Rename the newly copied folder to "local" 
- rename the file "about_misc.sh" to "about_local.sh".
- Open the "about_local.sh" file and edit the description to reflect the purpose of the new category.
    - For example: `# @description Language, keyboard, and time zone settings.`
   
- Main Menu will udate
  - This action will automatically create a new category entry in the main menu.
  - View the About Section
  - Navigate to the new section in the main menu to see the new subcategory entry.

Thank you for following this tutorial! 
If you have any questions or need further assistance, feel free to reach out.
 
License
This program is licensed under the terms of the GNU General Public License version 2.

For more information, contact the authors at info@armbian.com.

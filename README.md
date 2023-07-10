# jampi-config

Just another menu for Pi configuration.

`jampi-config` is a front-end for configng, with support for TUI interfaces and GUI(NOTE) interfaces. It is a refactoring of `armbian-config` using Bash Utility, and allows for launching configuration scripts with functional programming to use with TUI, GUI(NOTE), or by passing command-line arguments.

The idea is to use the provided API as a standalone application or as multiple applications. Some considerations for this design include:

- Management:
  - divided into levels
  - Individual applications can be updated as needed        
- user privlage handeling
  - Can be run as a non-sudo user, only calling superuser privileges when necessary
- Pass command line arguments:
  - command-line options for specifying the program to use for displaying messages (`-b` for `bash TUI`, `-w` for `whiptail CLIUI`, and `-n` for `dialog CLIUI`). It also includes a `help`
- Potential to reduce system resources needed on low-end devices


Note: The GUI algorithm has not yet been written, but the necessary data structures (such as arrays) are in place.

Note: The command-line arguments empliment ,the necessary data structures (such as getopt and "$@) are bing tested. 

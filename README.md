# jampi-config

Just another menu for Pi configuration.

`jampi-config` is a front-end for configng, with support for TUI interfaces and GUI(NOTE) interfaces. It is a refactoring of `armbian-config` using Bash Utility, and allows for launching configuration scripts with functional programming to use with TUI, GUI(NOTE), or by passing command-line arguments.

The idea is to use the provided API as a standalone application or as multiple applications. Some considerations for this design include:

cli_options.sh
```bash 

Usage:  [ -h | -dev ]
Options:
        -h  Print this help.
        -dev Options:
                cpu::get_policy Return policy as int based on original armbian-config logic.
                cpu::get_freqs  Return CPU frequencies as string delimited by space.
                cpu::get_min_freq       Return CPU minimum frequency as string.
                cpu::get_max_freq       Return CPU maximum frequency as string.
                cpu::get_governor       Return CPU governor as string.
                cpu::get_governors      Return CPU governors as string delimited by space.
                cpu::set_freq   Set min, max and CPU governor.
beta@beta:~$
```

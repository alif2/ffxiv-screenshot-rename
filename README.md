# Final Fantasy XIV Screenshot Renaming Utility
This utility changes the default naming scheme of Final Fantasy XIV screenshots from month-day-year to year-month-day to be possible to sort chronologically.

## Prerequisites
This is a bash script configured for Windows systems by default. If on a Windows system, you will need a way to run bash scripts. Git for Windows comes bundled with a bash shell, so all instructions assume using Git Bash.

## How to Use
1. Open the script and replace the `dir` variable with the path of the screenshots directory.

**Important! Make sure you make a backup copy of your screenshots folder before running this utility.**

### Windows
If your game is installed in the default location, you can replace the `<Username>` with your Windows username. Note that this script is using *nix paths and not Windows. If you attempt to paste a full Windows path, it will not work.

### Mac / Linux
Replace the `dir` variable with the full path of your screenshots folder.

2. Open a bash shell and run `<path-to-repository>/ffxiv-screenshot-rename.sh`. There are no arguments.

### Why a bash script on Windows?
It is easier for me to work with than a native version.
#!/usr/bin/env bash
set -eo pipefail

# check if the mend cli is installed
# check if the mend cli auth is completed
# run mend sca and reflect the exit code.


# Check if 'mend' exists in PATH
if command -v mend >/dev/null 2>&1; then
    # Mend exists
    pwd 
else
    echo "Error: 'mend' CLI does not exist on this system."
    echo "Please install 'mend' or check your PATH settings."
    exit 1
    # todo: have a link to installation page
fi


mend deps

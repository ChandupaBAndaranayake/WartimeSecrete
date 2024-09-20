#!/bin/bash

# Function to check password strength
check_password_strength() {
    local password="$1"

    password=$(echo "$password" | tr -d "'")

    # Handle empty password case
    if [[ -z "$password" ]]; then
        echo "false"
        return
    fi

    # Check if password meets the criteria
    if [[ ${#password} -lt 8 ]]; then
        echo "false"
        return
    fi
    if ! [[ "$password" =~ [a-z] ]]; then
        echo "false"
        return
    fi
    if ! [[ "$password" =~ [A-Z] ]]; then
        echo "false"
        return
    fi
    if ! [[ "$password" =~ [0-9] ]]; then
        echo "false"
        return
    fi

    echo "true"
}

# Get password from argument
password="$1"
check_password_strength "$password"

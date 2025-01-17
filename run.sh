#!/usr/bin/env bash

# Function to find and activate virtual environment
activate_venv() {
    for venv_dir in $(find . -type d -name ".venv"); do
        if [[ "$VIRTUAL_ENV" != *"$venv_dir"* ]]; then
            source "$venv_dir/bin/activate"
            return 0
        fi
    done
    return 1
}

# Check if virtual environment exists and activate if needed
if ! activate_venv; then
    echo "Virtual environment not found. Please create one using 'python -m venv venv'"
    exit 1
fi

ansible-playbook -i inventory/hosts playbooks/poll_bigip.yml
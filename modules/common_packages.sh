#!/bin/bash

# List of packages
packages=(
    "PHP" 
    "MySQL" 
    "Go" 
    "Python" 
    "WP-CLI" 
    "Git" 
    "SVN" 
    "Composer" 
    "NPM" 
    "Node.js"
    "Angular" 
    "Vue.js" 
    "Docker"
    "PostgreSQL" 
    "Redis" 
    "MongoDB"
    "Java" 
    "Terraform"
    "Ansible" 
    "Yarn" 
    "Ruby" 
    "Kubernetes"
)

# Function to manually select packages
select_packages() {
    selected_packages=()

    echo "Please select the packages you want to install (y/n):"
    for package in "${packages[@]}"; do
        read -p "Install $package? (y/n): " choice
        if [ "$choice" == "y" ]; then
            selected_packages+=("$package")
        fi
    done
}

# Export the selected_packages array for reuse
export -f select_packages
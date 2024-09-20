#!/bin/bash

# Function to set up Git
setup_git() {
    read -p "Enter your Name: " name
    read -p "Enter your Email address: " email

    git config --global user.name "$name"
    git config --global user.email "$email"
    echo "Git configured with Name: $name, Email: $email"
}

# Function to generate an SSH key
generate_ssh_key() {
    read -p "Enter your email for the SSH key: " email
    ssh-keygen -t rsa -b 4096 -C "$email" -f ~/.ssh/id_rsa -N ""
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
    echo "SSH key generated. Please add the following key to your Git account:"
    cat ~/.ssh/id_rsa.pub
}

# Export the functions for reuse
export -f setup_git
export -f generate_ssh_key
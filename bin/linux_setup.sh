#!/bin/bash

# Source common functions
source "$(dirname "$0")/modules/common_packages.sh"
source "$(dirname "$0")/modules/common_git_ssh.sh"

# Update package list
echo "Updating package list..."
sudo apt update

# Package selection
select_packages

# Install selected packages via apt
for package in "${selected_packages[@]}"; do
    case $package in
        "PHP") sudo apt install -y php ;;
        "MySQL") sudo apt install -y mysql-server ;;
        "Go") sudo apt install -y golang ;;
        "Python") sudo apt install -y python3 python3-pip ;;
        "WP-CLI") curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && sudo chmod +x wp-cli.phar && sudo mv wp-cli.phar /usr/local/bin/wp ;;
        "Git") sudo apt install -y git ;;
        "SVN") sudo apt install -y subversion ;;
        "Composer") sudo apt install -y composer ;;
        "NPM") sudo apt install -y npm ;;
        "Node.js") sudo apt install -y nodejs ;;
        "Angular") npm install -g @angular/cli ;;
        "Vue.js") npm install -g @vue/cli ;;
        "Docker") sudo apt install -y docker.io ;;
        "PostgreSQL") sudo apt install -y postgresql postgresql-contrib ;;
        "Redis") sudo apt install -y redis-server ;;
        "MongoDB") sudo apt install -y mongodb ;;
        "Java") sudo apt install -y default-jdk ;;
        "Terraform") sudo apt install -y terraform ;;
        "Ansible") sudo apt install -y ansible ;;
        "Yarn") sudo apt install -y yarn ;;
        "Ruby") sudo apt install -y ruby ;;
        "Kubernetes") sudo apt install -y kubectl ;;
        *) echo "Package $package not recognized" ;;
    esac
done

# Set up Git and SSH key
setup_git
generate_ssh_key
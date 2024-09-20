#!/bin/bash

# Source common functions
source "$(dirname "$0")/../modules/common_packages.sh"
source "$(dirname "$0")/../modules/common_git_ssh.sh"

# Install Homebrew if not already installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Package selection
select_packages

# Install selected packages via Homebrew
for package in "${selected_packages[@]}"; do
    case $package in
        "PHP") brew install php ;;
        "MySQL") brew install mysql ;;
        "Go") brew install go ;;
        "Python") brew install python ;;
        "WP-CLI") brew install wp-cli ;;
        "Git") brew install git ;;
        "SVN") brew install svn ;;
        "Composer") brew install composer ;;
        "NPM") brew install npm ;;
        "Node.js") brew install node ;;
        "Angular") npm install -g @angular/cli ;;
        "Vue.js") npm install -g @vue/cli ;;
        "Docker") brew install docker ;;
        "PostgreSQL") brew install postgresql ;;
        "Redis") brew install redis ;;
        "MongoDB") brew install mongodb ;;
        "Java") brew install java ;;
        "Terraform") brew install terraform ;;
        "Ansible") brew install ansible ;;
        "Yarn") brew install yarn ;;
        "Ruby") brew install ruby ;;
        "Kubernetes") brew install kubectl ;;
        *) echo "Package $package not recognized" ;;
    esac
done

# Set up Git and SSH key
setup_git
generate_ssh_key
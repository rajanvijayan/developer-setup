#!/bin/bash

# 1. Ask for user details
echo "Welcome to the Linux setup script!"
read -p "Enter your Name: " name
read -p "Enter your Email address: " email

# 2. List of packages for manual selection
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

# Display packages for selection
echo "Please select the packages you want to install (y/n):"

selected_packages=()

for package in "${packages[@]}"; do
    read -p "Install $package? (y/n): " choice
    if [ "$choice" == "y" ]; then
        selected_packages+=("$package")
    fi
done

# 3. Update package list
echo "Updating package list..."
sudo apt update

# 4. Install selected packages
echo "Installing selected packages..."
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

# 5. Setup Git config
echo "Configuring Git..."
git config --global user.name "$name"
git config --global user.email "$email"
echo "Git configuration set with Name: $name, Email: $email"

# 6. Generate SSH key for Git
echo "Generating SSH key..."
ssh-keygen -t rsa -b 4096 -C "$email" -f ~/.ssh/id_rsa -N ""
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "SSH key generated. Please add the following SSH key to your Git account:"
cat ~/.ssh/id_rsa.pub
echo "You can find this key at ~/.ssh/id_rsa.pub"

# Completion message
echo "Setup complete! You are ready to go!"
#!/bin/bash

# 1. Ask for user details
echo "Welcome to the Mac setup script!"
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
    "Homebrew" 
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

# 3. Install Homebrew if necessary
echo "Checking for Homebrew installation..."
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed"
fi

# 4. Install selected packages
echo "Installing selected packages..."
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
        "Docker") brew install --cask docker ;;
        "PostgreSQL") brew install postgresql ;;
        "Redis") brew install redis ;;
        "MongoDB") brew tap mongodb/brew && brew install mongodb-community ;;
        "Java") brew install openjdk ;;
        "Terraform") brew install terraform ;;
        "Ansible") brew install ansible ;;
        "Yarn") brew install yarn ;;
        "Ruby") brew install ruby ;;
        "Kubernetes") brew install kubectl ;;
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
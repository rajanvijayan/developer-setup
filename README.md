# Mac Setup Script

This script will help you set up a new Mac for development by allowing you to manually select the packages you wish to install. It automates the installation of essential tools like Git, PHP, MySQL, Docker, Node.js, and more using Homebrew.

## Prerequisites

- **macOS**: Ensure that you are running this script on a macOS system.
- **Terminal**: You should be familiar with using the Terminal to execute shell scripts.

## Instructions to Run the Script

### Step 1: Download the Script

1. Save the `mac_setup.sh` file to your preferred directory (e.g., Desktop).

### Step 2: Open Terminal

- Open the **Terminal** by pressing `Cmd + Space`, typing **Terminal**, and hitting **Enter**.

### Step 3: Navigate to the Directory

- Use the `cd` command to navigate to the directory where the script is saved. For example, if it’s saved on your **Desktop**, run the following command:

`cd ~/Desktop`

### Step 4: Make the Script Executable

- Before running the script, you need to make it executable by using the `chmod` command:

`chmod +x mac_setup.sh`

### Step 5: Run the Script

- Now that the script is executable, you can run it with:

`./mac_setup.sh`

Alternatively, you can run the script using `bash`:

`bash mac_setup.sh`

### Step 6: Follow the Prompts

- Once the script starts, it will ask you for:
  - **Your Name**: Used to configure Git.
  - **Your Email**: Used to configure Git and SSH key generation.
  
- Then, the script will list packages and prompt you to choose whether to install each package (e.g., PHP, MySQL, Git, Docker, etc.). Enter `y` to install a package or `n` to skip.

### Step 7: Setup Complete

- After completing the installation of your selected packages, the script will:
  - Set up your Git configuration with your name and email.
  - Generate an SSH key and display it for you to add to your Git hosting platform (e.g., GitHub, GitLab).

### Notes:

- **Homebrew Installation**: The script checks if **Homebrew** is installed. If it isn’t, the script will install it automatically.
- **SSH Key**: The SSH key will be generated and stored in `~/.ssh/id_rsa.pub`.

## Common Issues and Troubleshooting

- **Permission Denied**: If you get a "Permission denied" error when trying to run the script, ensure you have made it executable by running the `chmod +x mac_setup.sh` command.
  
- **Using `sudo`**: If required, you can run the script with elevated privileges using `sudo`:

`sudo ./mac_setup.sh`

- **Bash Not Found**: If the `bash` command is not found, make sure that you are running the script on a macOS system with a proper shell environment.

## Future Updates

- **Cross-Platform Support**: In future versions, this script will include setup instructions and scripts for other operating systems, such as Windows and Linux.

## License

This project is open-source and available under the MIT License.
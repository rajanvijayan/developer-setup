# Setup Scripts for macOS and Linux

This repository provides easy-to-use scripts to configure a development environment on macOS and Linux, allowing you to manually select the packages to install.

## How to Use

### 1. Clone the Repository

First, clone this repository to your local machine:

```bash
git clone https://github.com/rajanvijayan/developer-setup.git
cd developer-setup
```

### 2. Make the Scripts Executable

Ensure the scripts have execution permissions:

```bash 
chmod +x run.sh
```

### 3. Run the Setup Script

Run the run.sh script to detect your operating system (macOS or Linux) and start the relevant setup process:

```bash
./run.sh
```

### 4. Select Packages to Install

You will be prompted to select which packages to install (e.g., PHP, MySQL, Node.js, Angular, Vue.js, Git, etc.). Simply type “y” or “n” to choose the packages you need.

### 5. Git and SSH Configuration

During the setup, the script will:

- Configure Git settings (username, email).
- Generate an SSH key for Git services like GitHub or Bitbucket.

### 6. Post Setup

Once the setup is complete, you’ll have a fully configured development environment with your selected packages.

#### Customization

Feel free to edit the platform-specific setup scripts (mac_setup.sh, linux_setup.sh) to include any additional tools or packages you need.

#### Contributing

Contributions are welcome! Please refer to the [CONTRIBUTING.md](https://github.com/rajanvijayan/developer-setup/blob/main/CONTRIBUTING.md) for more information.


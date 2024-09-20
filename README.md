## Setup Script for macOS & Linux

This script helps you set up your development environment on a new **macOS** or **Linux** machine. It allows you to manually select and install essential development packages.

**Prerequisites**

•  **macOS** or **Debian-based Linux** (e.g., Ubuntu)
•  Basic familiarity with Terminal

**How to Run the Script**

**Step 1: Download the Script**

Save the mac_setup.sh (for macOS) or linux_setup.sh (for Linux) to your preferred directory.

**Step 2: Open Terminal**

•  **macOS**: Press Cmd + Space, type **Terminal**, and hit **Enter**.
•  **Linux**: Open Terminal from the applications menu.

**Step 3: Navigate to the Directory**

Use the cd command to move to the directory where the script is saved. Example:
`cd ~/Desktop`

**Step 4: Make the Script Executable**

Before running, make the script executable:
`chmod +x mac_setup.sh   # For macOS`
`chmod +x linux_setup.sh # For Linux`

**Step 5: Run the Script**

To run the script, use:
`./mac_setup.sh   # For macOS`
`./linux_setup.sh # For Linux`
Or use bash:
`bash mac_setup.sh   # For macOS`
`bash linux_setup.sh # For Linux`

**Step 6: Follow Prompts**

1.  Enter your name and email for Git configuration.
2.  Select the packages you wish to install by answering y (yes) or n (no).

**Notes**

•  **SSH Key**: The script generates an SSH key and displays it for you to add to your Git hosting service.
•  **Package Manager**:
•  **macOS**: Uses **Homebrew**.
•  **Linux**: Uses **apt** (for Ubuntu/Debian).
# Contributing to Setup Scripts

Thank you for considering contributing to this project! Contributions, big or small, are always welcome. Here’s a guide to help you get started:

## Table of Contents

1. [How to Contribute](#how-to-contribute)
2. [Reporting Issues](#reporting-issues)
3. [Creating Pull Requests](#creating-pull-requests)
4. [Code Style Guidelines](#code-style-guidelines)
5. [Setting up Development Environment](#setting-up-development-environment)

## How to Contribute

### 1. Fork the Repository
- Navigate to the repository on GitHub and click the "Fork" button.
- Clone your fork to your local machine:

```bash
git clone https://github.com/rajanvijayan/developer-setup.git
cd developer-setup
```

### 2. Create a Branch

- Always create a new branch for your work:

```bash 
  git checkout -b feature/your-feature-name
```
### 3. Make Changes

- Make your changes or enhancements, and be sure to follow the code style guidelines mentioned below.

### 4. Commit and Push

- Add your changes to git:

```bash
  git add .
```

- Commit your changes with a descriptive message:

```bash
git commit -m "Add detailed description of changes"
```

- Push your branch to GitHub:

```bash
git push origin feature/your-feature-name
```

### 5. Open a Pull Request

- Go to your fork on GitHub and click the “New Pull Request” button.
- Fill in a descriptive title and detailed description of your changes, then submit the pull request.

#### Reporting Issues

If you encounter any bugs, or have suggestions for improvements, feel free to open an issue.

#### When opening an issue, please:

- Describe the problem in detail.
- Include steps to reproduce the issue, if possible.
- Suggest possible solutions, if you have any.

#### Creating Pull Requests

**Please ensure your pull request:**

- Is focused on a specific issue or feature.
- Follows the code style guidelines mentioned below.
- Includes relevant tests and documentation, where applicable.
- Is linked to any relevant issue (e.g., using Fixes #123).

#### Code Style Guidelines

To maintain consistency, please follow these coding standards:

- Bash scripts:
- Use #!/bin/bash at the top of every script.
- Use consistent indentation (2 spaces or 4 spaces).
- Comment code where necessary to explain non-obvious logic.
- Commit messages:
- Should be written in present tense (e.g., “Add feature”, “Fix bug”).
- Keep messages concise but descriptive.

#### Setting up Development Environment

**Prerequisites**

Make sure you have the following installed on your machine:

- Git
- Bash (for macOS/Linux)

**To test the scripts locally, follow these steps:**

1.	Run run.sh and ensure platform-specific scripts (e.g., mac_setup.sh, linux_setup.sh) execute correctly.
2.	Test new modules by integrating them into the platform-specific scripts.

#### Getting Help

If you need any help or have questions regarding contribution, feel free to open an [issue](https://github.com/rajanvijayan/developer-setup/issues) or reach out to the maintainers.

**We appreciate your time and contributions!**
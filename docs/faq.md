# Frequently Asked Questions

## General

### What is AshGrid?
AshGrid is a cross-platform diagnostics and automation platform. It ensures your local developer environment matches the exact specifications required by your project, eliminating "it works on my machine" issues.

### Does AshGrid replace Docker?
No. AshGrid complements Docker. While Docker containerizes your application, AshGrid ensures the host machine (your laptop) has the correct versions of Docker, Node, Git, and other host-level dependencies required to run the project.

### Is AshGrid free?
Yes, AshGrid is completely open-source and free to use under the MIT License.

## Usage

### How do I configure AshGrid for a new project?
Run `ashgrid init` in the root of your project. This will generate an `ashgrid.yaml` file where you can specify required tools, versions, and environment variables.

### Can AshGrid automatically fix issues?
Yes! Running `ashgrid doctor --fix` will attempt to automatically resolve missing dependencies or incorrect configurations (e.g., installing a missing Node version via your configured Node manager).

## Troubleshooting

### AshGrid is running slowly. How can I speed it up?
Diagnostic checks run in parallel by default. However, some tools (like network-based checks) can be slow. You can use `ashgrid doctor --skip-network` to bypass slow network validations.

### Where are the log files stored?
Log files are stored in your user directory:
- **Windows**: `%LOCALAPPDATA%\ashgrid\logs`
- **macOS/Linux**: `~/.config/ashgrid/logs`

You can view them directly using `ashgrid logs`.

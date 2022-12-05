# Ansible playbook to remove bloatware from a fresh Windows 11 Install
Prerequisites:
- Download "Windows Subsystem for Linux" and "AlmaLinux 9" from Microsoft Store
- Enable "Windows Subsystem for Linux" and "Virtual Machine Platform" features -> Run as Administrator
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
```
- Downlaod Google Chrome and Visual Studio Code
```
winget install Google.Chrome 
winget install Microsoft.VisualStudioCode
```
- Prepare WSL -> https://github.com/andyt98/prepare-wsl
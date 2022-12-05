# Prepare WSL and remove bloatware from a fresh Windows 11 Install
- Enable "Windows Subsystem for Linux" and "Virtual Machine Platform" features -> Run as Administrator
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
```
- Enable scripts on the system
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```
- Remove bloatware and install software
```
.\remove-bloatware.ps1
.\install-software.ps1
```
- Prepare WSL -> https://github.com/andyt98/prepare-wsl

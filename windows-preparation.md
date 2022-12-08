# Prepare Windows 11 after fresh install
- Enable scripts on the system -> Run as Administrator
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```
- Run the prerequisites Script -> Run as Administrator
```
.\win-prerequisites.ps1
```
- Remove bloatware and install software
```
.\win-remove-bloatware.ps1
.\win-install-software.ps1
```
- Prepare WSL

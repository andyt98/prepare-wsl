# Ansible playbook to prepare AlmaLinux 9 WSL

Prerequisites:
- Add systemd flag on wsl.conf
```
echo -e "[boot] \nsystemd=true" | sudo tee -a /etc/wsl.conf
```
- Reboot WSL from PowerShell to allow the change to be made 
```
wsl --shutdown
```
Install required packages
```
sudo dnf update && sudo dnf upgrade -y && sudo dnf install -y vim git openssh-server ansible-core
```
- Generate ssh key pair and add the public key on your github account
```
ssh-keygen
cat .ssh/id_rsa.pub
```
- Clone the repo
```
git clone git@github.com:andyt98/prepare-wsl.git
git config --global user.email "you@example.com"
git config --global user.name "you@example.com"
cd prepare-wsl
```
- Install the required collection
```
ansible-galaxy collection install community.general
```
- Enable SSH
```
sudo systemctl enable sshd --now
```
- Run the playbook -> first time with --ask-pass --ask-become-pass flags
```
ansible-playbook prepare-wsl-almalinux.yml --ask-pass --ask-become-pass
```

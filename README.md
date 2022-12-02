# Ansible playbook to prepare WSL

Prerequisites:
- Don't ask for password when using sudo
```
sudo echo "$USER ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
```
- Add systemd flag on wsl.conf
```
echo -e "[boot] \nsystemd=true" | sudo tee -a /etc/wsl.conf
```
- Reboot WSL from PowerShell to allow the change to be made 
```
wsl --shutdown
```
- Generate ssh key pair and add the public key on your github account
```
ssh-keygen
cat .ssh/id_rsa.pub
```
- Install OpenSSH Server and open port 
```
sudo apt update && sudo apt upgrade -y && sudo apt install openssh-server -y
sudo systemctl enable ssh --now && sudo ufw allow ssh
ssh-copy-id user@localhost
```
- Install ansible
```
sudo apt install python3-pip python3-apt -y 
pip3 install ansible ansible-lint 
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```
- Install git and clone the repo
```
sudo apt install git -y
git clone git@github.com:andyt98/prepare-wsl.git
cd prepare-wsl
git config --global user.email "you@example.com"
git config --global user.name "you@example.com"
```
- Run the playbook
```
ansible-playbook prepare-wsl.yml --ask-become-pass
```

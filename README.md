# Ansible playbook to prepare WSL

Prerequisites:
- Add systemd flag on wsl.conf
```
echo -e "[boot] \nsystemd=true" | sudo tee /etc/wsl.conf
```
- Reboot WSL from PowerShell to allow the change to be made 
```
wsl --shutdown
```
- Generate ssh key pair and add the public key on your github account
```
ssh-keygen
cat .ssh/id_rsa.pub     # add this on github
```
- Install OpenSSH Server and open port 
```
sudo apt install openssh-server
sudo systemctl enable ssh --now
sudo ufw allow ssh
ssh-copy-id user@localhost
```
- Install git and clone the repo
```
sudo apt install git
git clone git@github.com:andyt98/prepare-wsl.git
cd prepare-wsl
git config --global user.email "you@example.com"
git config --global user.name "you@example.com"
```
- Install ansible
```
mkdir ansible
python3 -m venv venv
source venv/bin/activate
pip3 install ansible
```

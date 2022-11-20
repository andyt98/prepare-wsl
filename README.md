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
- Install git 
```
sudo apt install git
```
- Install ansible
```
mkdir ansible
python3 -m venv venv
source venv/bin/activate
pip3 install ansible
```
- Install OpenSSH Server and open port 

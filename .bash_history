ssh-keygen
clear
ssh-copy-id -i ansiuser@172.31.15.113
ssh-copy-id -i ansiuser@172.31.8.23
clear
cd /etc/ansible
ls
sudo vim hosts
clear
ansible 172.31.15.113 -m ping
ansible 172.31.8.23 -m ping
clear
ansible 172.31.15.113:172.31.8.23 -m ping
clear
sudo vim hosts
ansible myinfra -m ping
sudo vim hosts
ansible mynodes -m ping
clear
sudo vim hosts
cd
ansible mynodes -m ping
clear
cd
pwd
sudo vim myinventory
ls
cat myinventory
ansible -i /home/ansiuser/myinventory webserver -m ping
clear
sudo vim ansible.cfg
ansible webserver -m ping
clear
ansible webserver -m command -a "uptime"
ansible webserver -m command -a "df -h"
clear
pwd
vim playbookDebug.yml
sudo vim playbookDebug.yml
ansible-playbook playbookDebug.yml --syntax-check
ansible-playbook playbookDebug.yml 
clear
ansible webserver -m debug -a 'msg="hell All"'
clear
sudo vim playbookRegister.yml
ansible-playbook playbookRegister.yml
hostname -s
clear
hostname -s
sudo vim playbookRegister.yml
ansible-playbook playbookRegister.yml
clear
sudo vim playbookRegister.yml
ansible-playbook playbookRegister.yml
clear
sudo vim playbookRegister.yml
ansible-playbook playbookRegister.yml
clear
ansible-playbook playbookRegister.yml
clear
ansible webserver -m setup
clear
ansible webserver -m setup | wc -l
ansible webserver -m setup -a "filter=ansible_memfree_mb"
clear
ansible webserver -m setup -a "filter=ansible_date*"
clear
ansible webserver -m setup -a "filter=ansible_default*"
clear
ansible webserver -m setup -a "filter=ansible_distribution*"
clear
ls
cp playbookRegister.yml playbookWhen.yml
ls
sudo vim playbookWhen.yml
ansible-playbook playbookWhen.yml
clear
ansible-playbook playbookWhen.yml -v
clear
sudo vim playbookWhen.yml
ansible-playbook playbookWhen.yml -v
clear
sudo vim playbookploo.yml
ansible-playbook playbookploo.yml
clear
sudo vim playbookploo.yml
ansible-playbook playbookploo.yml
clear
vim userdemo.yml
ansible-playbook userdemo.yml
ansible-galaxy collection install amazon.aws
sudo apt install python3-pip
clear
pip3 install boto3
ls
vim ansible.cfg
sudo vim ansible.cfg
sudo vim aws_ec2.yml
export AWS_ACCESS_KEY_ID=AKIAUJU24ZR36U7L6TMM
export AWS_SECRET_ACCESS_KEY=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
pwd
ansible-inventory -i /home/ansiuser/aws_ec2.yml --list
clear
ssh-copy-id -i ansiuser@18.212.190.67
ansible -i /home/ansiuser/aws_ec2.yml aws_ec2 -m ping
clear
ls
rm aws_ec2.yml
ls

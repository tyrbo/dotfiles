sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

cd $HOME
curl https://raw.githubusercontent.com/tyrbo/dotfiles/master/playbook.yml > playbook.yml
ansible-playbook playbook.yml

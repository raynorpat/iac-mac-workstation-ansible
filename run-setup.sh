# step 1
# install homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# step 2
# update homebrew
brew update

# step 3
# install ansible - brew install ansible
brew install ansible

# step 4
# check for any homebrew issues
brew doctor

# step 5 - run the ansible playbook to install the reqs
ansible-galaxy install -r requirements.yml

# step 6 - run the ansible playbook, enter the local account credentials when prompted
ansible-playbook main.yml --ask-become-pass
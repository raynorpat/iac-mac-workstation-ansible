# step 1
# install homeberw - $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# step 2
# install ansible - brew install ansible
brew install ansible

# check for any homebrew issues
brew doctor

# step 3 - run the ansible playbook to install the reqs
ansible-galaxy install -r requirements.yml

# step 4 - run the ansible playbook, enter the local account credentials when prompted
ansible-playbook main.yml --ask-become-pas
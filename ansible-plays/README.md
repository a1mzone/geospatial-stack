# Ansible Plays

To make the setup a bit easier we can use these ansible plays, this assumes that you have basic ansible knowledge.



# Add User
    sudo mkdir -p /data/datastore/hadoop
    sudo useradd --home /data/datastore/hadoop hadoop
    sudo chown -R hadoop:hadoop /data/datastore/hadoop
    sudo usermod -aG sudo hadoop
    sudo passwd hadoop
    su - hadoop
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
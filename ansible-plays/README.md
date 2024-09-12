# Ansible Plays

To make the setup a bit easier we can use these ansible plays, this assumes that you have basic ansible knowledge and that you have setup / mounted your disks for hdfs.

Task Order:

    * Create the Hadoop User
    * Setup ohmyzsh
    * Set system changes - file limits and swappiness
    * Install packages (java, python and virtualenvwrapper)
    * Create folder structure
    * Setup: 
        Zookeeper
        HDFS
        Accumulo

Execute the plays in the following order

    ansible-playbook -v -l hdfs create_user.yml
    ansible-playbook -v -l hdfs ohmyzsh.yaml
    ansible-playbook -v -l hdfs system_changes.yaml 
    ansible-playbook -v -l hdfs packages.yaml 
    ansible-playbook -v -l hdfs create_directories.yaml
    ansible-playbook -v -l hdfs setup_zookeeper.yaml
    ansible-playbook -v -l hdfs setup_hdfs.yaml

As the hadoop user

    ssh-keygen
    ssh-copy-id localhost
    cdh (the alias to cd to the hadoop base dir)
    sbin/start-dfs.sh

You can now visit the machine-ip:9870 in your browser and hadoop should be up and running 

    ansible-playbook -v -l hdfs setup_accumulo.yaml

As hadoop user

    cda (the alias to cd to accumulo/bin)
    accumulo init (choose instance name and password)
    vim ../conf/accumulo-client.properties (edit instance name and password)
    ./accumulo_start.sh (start accumulo using the script)
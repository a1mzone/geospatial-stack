# Ansible Plays

To make the setup a bit easier we can use these ansible plays, this assumes that you have basic ansible knowledge.

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

    
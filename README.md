# geospatial-stack

This is the setup for a GeoMesa Accumulo stack running in a self hosted environment tested on Ubuntu 20.04

At the moment these plays do the majority of the setup for Zookeeper, Hadoop and Accumulo. 

In the future GeoMesa with Spark (Jupyter & Toree) will be included.

## Current versions 

    Zookeeper   3.4.14
    Hadoop      3.3.6
    Accumulo    2.0.1
    Java        1.8
    Python      3.10


### Structure

    /data/datastore/hadoop                      --> Hadoop user home directory
    /data/hdfs/{nvme0,nvme1}/{dfs,namenode}     --> HDFS disks  
    /data/tmp/{spark,hdfs}                      --> Spark & HDFS tmp  


/data/hdfs is where we mount disks for hadoop data (optimized HDFS format --> mkfs.ext4 -m1 -O dir_index,extent,sparse_super /dev/nvmeX)

tmp is where we mount a disk with good write endurance (typically 10 DWPD)

Typically I have a drive mounted on /data that stores the files, users etc, a second write intensive drive on tmp and then lastly drives for hdfs data.

Please ensure:
    Disk mounts and naming matches the hadoop xml config files

Typical steps:

    sudo mkdir -p /data/hdfs/{nvme0,nvme1}
    sudo fdisk /dev/nvme0
    sudo mkfs.ext4 -m1 -O dir_index,extent,sparse_super /dev/nvme0
    sudo blkid
    sudo vim /etc/fstab
        UUID=a22b3291-903a-4f72-a34d-ff2c08eece6b	/data/hdfs/nvme0 	ext4    noatime 1 2
    sudo mount -a

Repeat the above for nvme1 and finally create the sub directories

    sudo mkdir -p /data/hdfs/{nvme0,nvme1}/{dfs,namenode}

Next we can move to the ansible folder readme for execution instructions
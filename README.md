# geospatial-stack

This is the setup for a GeoMesa Accumulo stack running in a self hosted environment.

### Structure

/data/datastore/hadoop      --> Hadoop user home direcotry
/data/hdfs/{nvme0,nvme1}/{dfs,namenode}    --> HDFS disks
/data/tmp/{spark,hdfs}      --> Spark & HDFS tmp


hdfs is where we mount disks for hadoop data (optimized HDFS format --> mkfs.ext4 -m1 -O dir_index,extent,sparse_super /dev/nvmeX)

tmp is where we mount a disk with good write endurance (typically 10 DWPD)

This will assume that you have mounted your drives to your needs for tmp, hdfs, and hadoop user home.

Typically I have a drive mounted on /data that stores the files, users etc, a second write intensive drive on tmp and then lastly drives for hdfs data.

Please ensure:
    Disk mounts and naming matches the hadoop xml config files
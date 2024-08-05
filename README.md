# geospatial-stack

This is the setup for a GeoMesa Accumulo stack running in a self hosted environment.

### Structure

/data/{datastore,hdfs,tmp}/

datastore will have a hadoop folder that is the hadoop users home directory

hdfs is the directory we format for the namenode

tmp is a tmp directory where all temp dirs live (spark, hdfs, etc)

Mounting different types of disk for each is recommended 

This will assume that you have mounted your drives to your needs for tmp, hdfs, and data.

Typically I have a drive mounted on /data that stores the files, users etc, a second write intensive drive on tmp and then lastly a drive 

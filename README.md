# README

This project aims to set up a simple environment for data exploration with Spark.

## INFRASTRUCTURE 

### AWS

Create an Analytics/EMR cluster. Keep in mind that the VM setting `m3.2xlarge` is 8 cores, 26ECU, 32GB RAM and the unit costs less than $0.50 per hour.

Ensure Spark and Zeppelin are enabled. 

Edit the security groups so that slaves and master can be SSHd (inbound connection).

From the master node:

```
sudo yum install git
git clone https://github.com/mauriciojost/data-exploration.git
cd data-exploration
hdfs dfs -put notebooks/datasets/ /
hdfs dfs -ls /
```

Zeppelin will be available on port 8890. 

### DOCKER

To create an environment in a Docker container you can execute: 

```
cd docker
bash run.bash
```

Zeppelin will be available on port 8080. 

## ZEPPELIN 

From Zeppelin (port 8890): 

```
val routes = sc.textFile("/datasets/airline-industry/routes.dat")
rountes.count()
```


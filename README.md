# README

This project aims to set up a simple environment for data exploration with Spark, either in local mode (via _Docker_) or on the cloud (multi node configuration via _AWS_).

## Set up the infrastructure 

As infrastructure for your data exploration you can either use:

- your own computer (via _Docker_)
- a cloud service (via _AWS_)

### Use your workstation (Docker)

To create an environment in a Docker container you can execute: 

```
cd docker
bash run.bash
```

**Zeppelin will be available at: http://localhost:8080**

### Use the cloud (AWS)

Create an Analytics/EMR cluster. Keep in mind that the VM setting `m3.2xlarge` is 8 cores, 26ECU, 32GB RAM and the unit costs less than $0.50 per hour.

Ensure Spark and Zeppelin are enabled. 

Edit the security groups so that slaves and master can be SSHd (inbound connection).

From the master node:

```
sudo yum install git
git clone https://github.com/mauriciojost/spark-data-exploration-notebook.git
cd spark-data-exploration-notebook
hdfs dfs -put datasets/ /
hdfs dfs -ls /
```

**Zeppelin will be available at: http://masterip:8890**

## Create notebooks and explore data

From Zeppelin: 

```
val routes = sc.textFile("/datasets/airline-industry/routes.dat")
rountes.count()
```


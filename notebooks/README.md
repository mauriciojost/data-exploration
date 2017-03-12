# README

This project aims to set up a simple environment for data exploration with Spark.

## AWS

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

From Zeppelin (port 8890): 

```
val routes = sc.textFile("/datasets/airline-industry/routes.dat")
rountes.count()
```

## DOCKER

Execute: 

```
sudo docker pull dylanmei/zeppelin
sudo docker run --rm --net=host -p 8080:8080 dylanmei/zeppelin
```

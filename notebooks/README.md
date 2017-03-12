# README

This project aims to set up a simple environment for data exploration with Spark.

## AWS

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

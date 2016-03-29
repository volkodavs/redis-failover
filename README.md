# Redis failover

## Purpose
Install and build for testing purposes high availability redis replication with monitoring system. 

## Apps 
* Redis (v.3.0.7)
* Sentinel (v.3.0.7) 
* [Monitoring tool](https://github.com/junegunn/redis-stat)

## Architecture
All services mapped to host with different ports. Initially Redis1 start as a master and Redis2,3 started as a slaves. When Redis1 became available Sentinels(1,2,3) will try to start a failover.  

![](https://cloud.githubusercontent.com/assets/4140597/14103126/6dddd49e-f596-11e5-8d74-e9c72c4abed1.png)

## Monitoring 
![Redis monitoring](https://cloud.githubusercontent.com/assets/4140597/14103709/4938fc92-f599-11e5-898f-c6c75d9fcdb7.png)

## Installation
* [Docker](https://docs.docker.com/engine/installation/linux/ubuntulinux/)
* [Docker-compose](https://docs.docker.com/compose/install/)
* Run docker without sudo [how to](http://askubuntu.com/questions/477551/how-can-i-use-docker-without-sudo) 

## Configuration 
* *Redis installation*: *./docker-redis/base* 
* *Redis nodes*: *./docker-redis/server/node(1|2|3)* 
* *Sentinel*: *./docker-redis/sentinel/node(1|2|3)*
* *Monitoring*: *./docker-redis/monitor*

## How to run
```
* ./docker-compose up
```
NOTE: After configuration has been changed run
```
 ./docker-compose build
```
## How to stop
```
* ./docker-compose down
```
## How to test failover 

1) List docker containers: 
```
docker ps 
```
2) Stop redis container
```
docker kill <container_name>  
```
3) Monitor failover
```
http://localhost:8080/
```
4) Have fun :)

## More info 
* [Sentinel](http://redis.io/topics/sentinel)
* [Redis](http://redis.io/)

## CAUTION 
Docker network_mode: "host"

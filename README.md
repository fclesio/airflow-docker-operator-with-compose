# Airflow demo: Using the DockerOperator with Docker Compose

Most of tutorials just explains how to use the [Airflow DockerOperator](https://airflow.apache.org/docs/apache-airflow-providers-docker/stable/_api/airflow/providers/docker/operators/docker/index.html) using the bare metal installation; and here we will use it with [Airflow on top of Docker Compose](https://airflow.apache.org/docs/apache-airflow/stable/start/docker.html).

## Authors

- [@fclesio](https://www.github.com/fclesio)

## Setup
1) First create a container with the webservice and create the `airflow` user, [as described in the official docs](https://airflow.apache.org/docs/apache-airflow/stable/start/docker.html):

```bash
$ docker-compose up airflow-init
```

or execute the following script below:
```bash
$ bash bin/initial_setup.sh
```

2) With this initial setup made, start the webservice and other components via `docker-compose`, 

```bash
$ docker build -f dags/docker_job/Dockerfile -t docker_image_task . && \
docker-compose up -d
```

or execute the following script below that will do the same thing:
```bash
$ bash bin/start.sh
```

3) Finally when you're done with your experiment, stop all containers running the following command:
```bash
$  bash bin/stop.sh
```

## License

[![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs)
  

## References

Useful links that I used during this endeavor in importance order. 

-    [Running Airflow in Docker](https://airflow.apache.org/docs/apache-airflow/stable/start/docker.html)

-   [How can I used the DockerOperator in Airflow, of I am already running Airflow in Docker?](https://www.reddit.com/r/dataengineering/comments/kmojyc/how_can_i_used_the_dockeroperator_in_airflow_of_i/)

-   [Using Docker-in-Docker for your CI or testing environment? Think twice.](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/)

-   [How to use the DockerOperator in Apache Airflow](https://marclamberti.com/blog/how-to-use-dockeroperator-apache-airflow/)

-   [How to Use Airflow without Headaches](https://towardsdatascience.com/how-to-use-airflow-without-headaches-4e6e37e6c2bc)

-   [Docker Thanos (use it carefully)](https://gist.github.com/fclesio/436aedee06b91aa8ac863b671919372e)

-   [DockerOperator Could not serialize the XCom value into JSON](https://github.com/apache/airflow/issues/13487)

-   [Is it ok to run docker from inside docker?](https://stackoverflow.com/questions/27879713/is-it-ok-to-run-docker-from-inside-docker)

-   [chmod not working correctly in Docker](https://serverfault.com/questions/772227/chmod-not-working-correctly-in-docker)

-   [Airflow DockerOperator: connect sock.connect(self.unix_socket) FileNotFoundError: [Errno 2] No such file or directory](https://stackoverflow.com/questions/61186983/airflow-dockeroperator-connect-sock-connectself-unix-socket-filenotfounderror)

-   [How to mount docker socket as volume in docker container with correct group](https://stackoverflow.com/questions/36185035/how-to-mount-docker-socket-as-volume-in-docker-container-with-correct-group)

-   [Permission issue on running docker command in Python subprocess through Apache Airflow](https://stackoverflow.com/questions/56782039/permission-issue-on-running-docker-command-in-python-subprocess-through-apache-a/60092639#60092639)

-   [How To Run Docker in Docker Container](https://devopscube.com/run-docker-in-docker/)

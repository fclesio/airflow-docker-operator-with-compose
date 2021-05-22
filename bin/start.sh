#!/bin/bash

docker build -f dags/docker_job/Dockerfile -t docker_image_task . && \
docker-compose up -d

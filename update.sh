#!/usr/bin/env bash
cd /root/codeforfun/codeforfun-jenkins
docker-compose pull
docker-compose rm -s -f jenkins
docker-compose up -d jenkins
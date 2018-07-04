#!/usr/bin/env bash
cd /root/codeforfun/codeforfun-jenkins
git pull
docker-compose build
docker-compose rm -s -f
docker-compose up -d

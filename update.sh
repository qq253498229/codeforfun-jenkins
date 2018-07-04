#!/usr/bin/env bash
cd /root/codeforfun/codeforfun-jenkins
docker-compose rm -s -f jenkins
docker-compose up -d jenkins

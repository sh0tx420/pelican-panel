#!/bin/bash
# NTOE: run this first:
# docker build --tag "pelican-panel"
# docker volume create pelican_data
nPort="7510"

docker run -d -p ${nPort}:80 -v pelican_data:/app/storage --restart=always pelican-panel

#!/usr/bin/env sh
sudo service ossec stop
sudo /var/ossec/bin/agent-auth -m 127.0.0.1 -p 1515 -A random
sudo service ossec start
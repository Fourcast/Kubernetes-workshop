#!/bin/bash
COMPUTE_IP=34.98.120.168
ulimit -n 10000
ab -n 10000 -c 50 http://$COMPUTE_IP/load
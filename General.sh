#!/bin/bash

echo "Current Working Directory:$(pwd)"
echo "Current User:$(whoami)"
echo "index number of each file:$(ls --inode)"
echo "Free Memory: $(free -m)"
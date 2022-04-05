#!/bin/bash

echo IP:
read IP

# Infinite loop
while true
do 
  curl $IP
  echo 'Press ctrl+c to escape.'
done

# Press ctrl+c to escape
#!/bin/bash

while :; do
  n=$(date +%y%m%d%H%M%S)-$i.png
  while [[ -e $n ]]; do
    n=${n%-*}.png
  done
  ./imagesnap -w -q 1 $n
  sleep 60
done

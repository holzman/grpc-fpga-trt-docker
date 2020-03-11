#!/usr/bin/env bash

xclmgmt_driver="$(find /dev -name xclmgmt\*)"
docker_devices=""
echo "Found xclmgmt driver(s) at ${xclmgmt_driver}"

for i in ${xclmgmt_driver} ;
do
  docker_devices+="--device=$i "
done

render_driver="$(find /dev/dri -name renderD\*)"
echo "Found render driver(s) at ${render_driver}"
for i in ${render_driver} ;
do
  docker_devices+="--device=$i "
done

docker run \
  --rm \
  --name grpc-trt-fpga-server \
  -p 8081:8081 \
  -d \
  $docker_devices \
  $1  $2
 


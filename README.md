# grpc-trt-fpga


https://www.xilinx.com/products/boards-and-kits/alveo/u250.html#gettingStarted

1. Ensure that the version of XRT installed on the host matches the xilinx_runtime_base version (e.g. 2019.2)
2. Download the Vitis Design Environment and install on the host. (This is an interactive install, unfortunately).
3. As root, bind mount the Vitis /tools directory into this directory (e.g. `mount -o bind /vitis/tools tools`)

Ensure that the `.dockerignore` file is present.

```
export DOCKER_BUILDKIT=1 
docker build -t grpc-trt-fpga .
```

Run server:
```
./docker_run.sh grpc-trt-fpga
```




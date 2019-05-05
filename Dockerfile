FROM ubuntu:18.04
WORKDIR /app
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y git bash libatlas-base-dev liblapack-dev libblas-dev python-pip
COPY . BNN-PYNQ
CMD cd BNN-PYNQ/bnn/src/network && BOARD=Pynq-Z2 PATH=/app/Xilinx/Vivado/2018.3/bin/:$PATH VIVADOHLS_INCLUDE_PATH=/app/Xilinx/Vivado/2018.3/include/ XILINX_BNN_ROOT=/app/BNN-PYNQ/bnn/src ./make-hw.sh lfcW1A1 pynqZ1-Z2 a && cp output/bitstream/* /app/persist/


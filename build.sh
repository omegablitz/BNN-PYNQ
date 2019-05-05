#!/bin/bash
docker build . --tag build-bnn && docker run -it --mount type=bind,src=/home/aashish/Work/MIT/6.888/project/Xilinx,dst=/app/Xilinx --mount type=bind,src=/home/aashish/Work/MIT/6.888/project/6.888-final-project/BNN-PYNQ/build,dst=/app/persist build-bnn

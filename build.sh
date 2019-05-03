docker build . --tag build-bnn && docker run -it --mount type=bind,src=/home/aashish/Work/MIT/6.888/project/Xilinx,dst=/app/Xilinx --mount type=volume,src=build,dst=/app/persist build-bnn

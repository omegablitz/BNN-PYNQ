#!/bin/bash

if [ -z "$VIVADO_DIR" ]; then
    if [ $(whoami) == "aashish" ]; then
        VIVADO_DIR=/home/aashish/Work/MIT/6.888/project/Xilinx
    elif [ $(whoami) == "noah" ]; then
        VIVADO_DIR=/Users/noah/School/sp19/6.888/Xilinx
    else
        echo "Please set VIVADO_DIR"
        exit 1
    fi
fi

if [ -z "$OUTPUT_DIR" ]; then
    if [ $(whoami) == "aashish" ]; then
        OUTPUT_DIR=/home/aashish/Work/MIT/6.888/project/6.888-final-project/BNN-PYNQ/build
    elif [ $(whoami) == "noah" ]; then
        OUTPUT_DIR=/Users/noah/School/sp19/6.888/BNN-PYNQ/build
    else
        echo "Please set OUTPUT_DIR"
        exit 1
    fi
fi

docker build . --tag build-bnn && docker run -it --mount type=bind,src=$VIVADO_DIR,dst=/app/Xilinx --mount type=bind,src=$OUTPUT_DIR,dst=/app/persist build-bnn

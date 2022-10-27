#!/bin/bash
/models/labscim/src/labscim -m -u Cmdenv -c LoRaOnly -n ../..:../../../src:$HOME/inet4/src:$HOME/inet4/examples:$HOME/inet4/tutorials:$HOME/inet4/showcases --image-path=$HOME/inet4/images -l $HOME/inet4/src/libINET.so labscim-lora-fhss.ini


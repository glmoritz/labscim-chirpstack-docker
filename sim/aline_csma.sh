#!/bin/bash
/models/labscim/src/labscim -m -u Cmdenv -c CSMAOnly -n ../..:../../../src:$HOME/inet4.4/src:$HOME/inet4.4/examples:$HOME/inet4.4/tutorials:$HOME/inet4.4/showcases --image-path=$HOME/inet4.4/images -l $HOME/inet4.4/src/libINET.so labscim-contikimac-smallhouse-csma.ini

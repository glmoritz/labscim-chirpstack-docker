#!/bin/bash
source /root/omnetpp/setenv
/root/omnetpp/bin/opp_makemake -f --deep -KINET_PROJ=/root/inet4.4 -DINET_IMPORT -I/root/inet4.4/src -L/root/inet4.4/src -lboost_system -lcryptopp -lpthread -lrt -lINET
make -j$nproc


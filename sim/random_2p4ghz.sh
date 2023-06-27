#!/bin/bash
RUNS=8
source /root/omnetpp/setenv 

# for (( i=0; i<=$RUNS; i=i+1 ))
# do
#     killall node.labscim
#     rm /dev/shm/labscim-*               
#     /models/labscim/src/labscim -r $i -m -u Cmdenv -c case02-SmallHouseTSCHRandom2p4GHz -n ../..:../../../src:$HOME/inet4.4/src:$HOME/inet4.4/examples:$HOME/inet4.4/tutorials:$HOME/inet4.4/showcases --image-path=$HOME/inet4.4/images -l $HOME/inet4.4/src/libINET.so aline_simulations.ini    
# done

for (( i=0; i<=$RUNS; i=i+1 ))
do
    killall udp-client.labscim
    killall udp-server.labscim
    rm /dev/shm/labscim-*               
    /models/labscim/src/labscim -r $i -m -u Cmdenv -c case04-SmallHouseCSMARandom2p4GHz -n ../..:../../../src:$HOME/inet4.4/src:$HOME/inet4.4/examples:$HOME/inet4.4/tutorials:$HOME/inet4.4/showcases --image-path=$HOME/inet4.4/images -l $HOME/inet4.4/src/libINET.so aline_simulations.ini    
done

for (( i=0; i<=$RUNS; i=i+1 ))
do
    killall node.labscim
    rm /dev/shm/labscim-*               
    /models/labscim/src/labscim -r $i -m -u Cmdenv -c case14-BigHouseTSCHRandom2p4Ghz -n ../..:../../../src:$HOME/inet4.4/src:$HOME/inet4.4/examples:$HOME/inet4.4/tutorials:$HOME/inet4.4/showcases --image-path=$HOME/inet4.4/images -l $HOME/inet4.4/src/libINET.so aline_simulations.ini    
done

for (( i=0; i<=$RUNS; i=i+1 ))
do
    killall udp-client.labscim
    killall udp-server.labscim
    rm /dev/shm/labscim-*               
    /models/labscim/src/labscim -r $i -m -u Cmdenv -c case16-BigHouseCSMARandom2p4Ghz -n ../..:../../../src:$HOME/inet4.4/src:$HOME/inet4.4/examples:$HOME/inet4.4/tutorials:$HOME/inet4.4/showcases --image-path=$HOME/inet4.4/images -l $HOME/inet4.4/src/libINET.so aline_simulations.ini    
done

for (( i=0; i<=$RUNS; i=i+1 ))
do
    killall node.labscim
    rm /dev/shm/labscim-*               
    /models/labscim/src/labscim -r $i -m -u Cmdenv -c case50-SmallHouseTSCHRandom2p4GHz10s -n ../..:../../../src:$HOME/inet4.4/src:$HOME/inet4.4/examples:$HOME/inet4.4/tutorials:$HOME/inet4.4/showcases --image-path=$HOME/inet4.4/images -l $HOME/inet4.4/src/libINET.so aline_simulations.ini    
done

for (( i=0; i<=$RUNS; i=i+1 ))
do
    killall udp-client.labscim
    killall udp-server.labscim
    rm /dev/shm/labscim-*               
    /models/labscim/src/labscim -r $i -m -u Cmdenv -c case52-SmallHouseCSMARandom2p4GHz10s -n ../..:../../../src:$HOME/inet4.4/src:$HOME/inet4.4/examples:$HOME/inet4.4/tutorials:$HOME/inet4.4/showcases --image-path=$HOME/inet4.4/images -l $HOME/inet4.4/src/libINET.so aline_simulations.ini    
done

for (( i=0; i<=$RUNS; i=i+1 ))
do
    killall node.labscim
    rm /dev/shm/labscim-*               
    /models/labscim/src/labscim -r $i -m -u Cmdenv -c case62-BigHouseTSCHRandom2p4Ghz10s -n ../..:../../../src:$HOME/inet4.4/src:$HOME/inet4.4/examples:$HOME/inet4.4/tutorials:$HOME/inet4.4/showcases --image-path=$HOME/inet4.4/images -l $HOME/inet4.4/src/libINET.so aline_simulations.ini    
done

for (( i=0; i<=$RUNS; i=i+1 ))
do
    killall udp-client.labscim
    killall udp-server.labscim
    rm /dev/shm/labscim-*               
    /models/labscim/src/labscim -r $i -m -u Cmdenv -c case64-BigHouseCSMARandom2p4Ghz10s -n ../..:../../../src:$HOME/inet4.4/src:$HOME/inet4.4/examples:$HOME/inet4.4/tutorials:$HOME/inet4.4/showcases --image-path=$HOME/inet4.4/images -l $HOME/inet4.4/src/libINET.so aline_simulations.ini    
done

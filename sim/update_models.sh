#!/bin/bash
cd /models/labscim/src/common
chmod +x fix_symlinks.sh
./fix_symlinks.sh
cd /root/lora_gateway
chmod +x fix_symlinks.sh
./fix_symlinks.sh
make clean
make -j$nproc
cd /root/packet_forwarder/lora_pkt_fwd/inc
chmod +x fix_symlinks.sh
./fix_symlinks.sh
cd /root/packet_forwarder
make clean
make -j$nproc
cd /root/contiki-ng/examples/6tisch/simple-node
make -j$nproc TARGET=labscim clean
make -j$nproc TARGET=labscim
cd /models/labscim/src
cp /models/labscim/simulations/wireless/sim/makemake.sh /models/labscim/src
chmod +x makemake.sh
./makemake.sh
cd /root/LoRaMac-node/src/boards/labscim
chmod +x fix_symlinks.sh
./fix_symlinks.sh
cd /root/LoRaMac-node
cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DAPPLICATION:STRING=LoRaMac -DSUB_PROJECT:STRING=periodic-uplink-lpp -DLORAWAN_DEFAULT_CLASS:STRING=CLASS_A -DCLASSB_ENABLED:STRING=ON -DACTIVE_REGION:STRING=LORAMAC_REGION_AU915 -DMODULATION:STRING=LORA -DBOARD:STRING=labscim -DMBED_RADIO_SHIELD:STRING=LABSCIM_SHIELD -DLORAMAC_LR_FHSS_IS_ON:STRING=ON -DSECURE_ELEMENT:STRING=SOFT_SE -DSECURE_ELEMENT_PRE_PROVISIONED:STRING=OFF -DREGION_EU868:STRING=ON -DREGION_US915:STRING=OFF -DREGION_CN779:STRING=OFF -DREGION_EU433:STRING=OFF -DREGION_AU915:STRING=ON -DREGION_CN470:STRING=OFF -DREGION_AS923:STRING=OFF -DREGION_KR920:STRING=OFF -DREGION_IN865:STRING=OFF -DREGION_RU864:STRING=OFF -DREGION_AS923_DEFAULT_CHANNEL_PLAN:STRING=CHANNEL_PLAN_GROUP_AS923_1 -DREGION_CN470_DEFAULT_CHANNEL_PLAN:STRING=CHANNEL_PLAN_20MHZ_TYPE_A -DUSE_RADIO_DEBUG:STRING=OFF -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/gcc -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/g++ -S/root/LoRaMac-node -B/root/LoRaMac-node/build -G Ninja
cd /root/LoRaMac-node/build
ninja
cd /root/contiki-ng/examples/rpl-udp
make -j$nproc TARGET=labscim

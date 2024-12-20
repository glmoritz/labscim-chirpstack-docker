#!/bin/bash
find ./postgresqldata/ -type f -name ".gitkeep" -delete
chmod 777 -R ./contiki-ng
chmod 777 -R ./labscim
chmod 777 -R ./lora_gateway
chmod 777 -R ./LoRaMac-node
chmod 777 -R ./packet_forwarder
chmod 777 -R ./sim
chmod 777 -R ./postgresqldata

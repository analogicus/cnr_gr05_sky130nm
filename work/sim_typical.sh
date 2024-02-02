#!bin/bash
echo "updating netlisr"
make xsch
echo "updating sim"
cd ../sim/CNR_05/
make typical

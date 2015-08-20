#!/bin/bash

# display control via iTach WiFi units
# Jeremy Weatherford jweather@xidus.net 216 409-1723

echo -ne "RSPW1   \r" | nc -w 1 10.10.12.2 4999 & # Atrium Outfitter
echo -ne "RSPW1   \r" | nc -w 1 10.10.12.3 4999 & # Atrium Waterfall

echo -ne "n" | nc -w 1 10.10.12.4 4999 & # Welcome North
echo -ne "n" | nc -w 1 10.10.12.5 4999 & # Welcome South

sleep 1

echo -ne "POWR0   \r" | nc -w 1 10.10.12.2 4999 &
echo -ne "POWR0   \r" | nc -w 1 10.10.12.3 4999 &


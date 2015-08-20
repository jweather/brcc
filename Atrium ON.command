#!/bin/bash

# display control via iTach WiFi units
# Jeremy Weatherford jweather@xidus.net 216 409-1723

echo -ne "POWR1   \r" | nc -w 1 10.10.12.2 4999 & # Atrium Outfitter
echo -ne "POWR1   \r" | nc -w 1 10.10.12.3 4999 & # Atrium Waterfall

echo -ne "N" | nc -w 1 10.10.12.4 4999 & # Welcome North
echo -ne "N" | nc -w 1 10.10.12.5 4999 & # Welcome South


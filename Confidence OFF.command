#!/bin/bash

# display control via iTach WiFi units
# Jeremy Weatherford jweather@xidus.net 216 409-1723

# power save mode off
echo -ne "RSPW1   \r" | nc -w 1 10.10.12.6 4999 &

sleep 1

echo -ne "POWR0   \r" | nc -w 1 10.10.12.6 4999 &




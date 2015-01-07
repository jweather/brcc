#!/bin/bash

# display control via iTach WiFi units
# Jeremy Weatherford jweather@xidus.net 216 409-1723

echo -ne "POWR1   \r" | nc -w 1 10.10.12.6 4999 & # BigRoom Confidence Monitor


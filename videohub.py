#!/usr/bin/python

import sys
import socket
import time
import hashlib

if len(sys.argv) < 4:
    print 'Usage: videohub.py <ip> <input> <output>'
    print 'Example: videohub.py localhost 8 5'
    sys.exit()

ip = sys.argv[1]
inp = int(sys.argv[2])
outp = int(sys.argv[3])

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((ip, 9990))

time.sleep(0.5)

s.sendall("VIDEO OUTPUT ROUTING:\n")
s.sendall(str(outp-1) + " " + str(inp-1) + "\n") # numbers are zero based
s.sendall("\n")

time.sleep(0.5)

resp = s.recv(100)

print resp

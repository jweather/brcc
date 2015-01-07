#!/usr/bin/python

import sys
import socket
import time
import hashlib

ip = sys.argv[1]
pwd = sys.argv[2]
cmd = sys.argv[3]

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((ip, 4352))

time.sleep(0.5)

header = s.recv(100).replace('\r', '').replace('\n', '')
nonce = header.split(' ')[2]

md5 = hashlib.md5()
md5.update(nonce + pwd)
hash = md5.hexdigest()
print "got nonce = " + nonce + ", hash = " + hash

s.sendall(hash + cmd + '\r')

time.sleep(0.5)

resp = s.recv(100)

print resp

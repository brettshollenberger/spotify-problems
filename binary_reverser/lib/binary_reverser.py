#!/usr/bin/python

import sys

def binary_reverser(num):
    num = int(num)
    if num <= 0:
        return "Invalid" 
    inverted_binary = ""
    while num > 0:
            inverted_binary += str(num%2)
            num /= 2
    return int(inverted_binary, 2)

while 1:
    try:
        line = sys.stdin.readline()
    except KeyboardInterrupt:
        break

    if not line:
        break

    print binary_reverser(line)

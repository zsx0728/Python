#!/usr/bin/python
import re

def main():
  pattern = "[0-9]+"
  with open('data.txt') as f:
    for line in f:
      re.findall(pattern, line)

if __name__ == '__main__':
  main()

#!/usr/bin/python
import re

def main():
  pattern = "[0-9]+"
  re_obj = re.compile(pattern)
  with open('data.txt') as f:
    for line in f:
      re_obj.findall(line)

if __name__ == '__main__':
  main()

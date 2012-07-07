import os
import readline
from cStringIO import StringIO
from tokenize import generate_tokens
STRING = 1
f = open("data.txt",'r')
numbers=[]
for line in f.readlines():
  numbers.append(list(token[STRING] for token in generate_tokens(StringIO(line).readline) if token[STRING] and token[STRING]!= '\n'))
for num in numbers:
  print numbers

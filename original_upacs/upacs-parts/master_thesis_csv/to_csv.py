#coding: utf-8

import sys

H1 = 'Array'
H2 = 'Performance'

size_list = []
data = []

fname = sys.argv[1]

f = open(fname)

line = f.readline()
while(line):
    if(line.startswith(H1)):
        sz_tmp = line.split('=')[1].strip()
        size = int(sz_tmp.split('^')[0])
        size_list.append(size)
    elif(line.startswith(H2)):
        bw = float(line.split()[1])
        tmp = [size, bw]
        data.append(tmp)
    line = f.readline()

f.close()

print('Array Size, Sustained Memory Bandwidth [GB/s]')
for i in sorted(list(set(size_list))):
    a = [x[1] for x in data if x[0] == i]
    print(str(i) + ',' + str(sum(a)/len(a)))
    

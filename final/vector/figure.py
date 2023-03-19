import numpy as np
import matplotlib.pyplot as plt
import xlrd
import pandas as pd

sheet=pd.read_excel(r'C:\\Users\\lo\\Desktop\\graduate thesis\\final\\vector\\result_vec_add.xls')


size_offload = sheet.iloc[1:,1]
bandwidth_offload = sheet.iloc[1:,10]
size = sheet.iloc[2:,13]
bandwidth = sheet.iloc[2:,12]

#print(size,bandwidth)

plt.plot(size,bandwidth,'blue',label='origin')
plt.scatter(size,bandwidth,s=12,zorder=2)

plt.plot(size_offload,bandwidth_offload,'red',label='abc')
plt.scatter(size_offload,bandwidth_offload,s=12,zorder=1)

plt.title('examle')
plt.xlabel('array size $N^3$')
plt.ylabel('bandwidth [GB/s]')
plt.legend()
plt.show()
#print(size,size_abc,bandwidth,bandwidth_abc)








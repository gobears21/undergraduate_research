import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.pyplot import figure
df = pd.read_excel("C:\\Users\\lo\\Desktop\\graduate thesis\\final\\vector\\result_vec_add.xls")
#print(df)
#print(df["N"])
print(df["offload-band"])
print(df["sycl-band"])
plt.rcParams.update({'font.size': 17})
figure(figsize=(10,6))
plt.plot(df["N"],df["sycl-band"],label='neoSYCL',linewidth=1,color='blue',marker='^',
markerfacecolor='blue',markersize=3)
plt.plot(df["N"],df["offload-band"],label='VEO',linewidth=1,color='orange',marker='D',
markerfacecolor='orange',markersize=3)
#plt.figure(figsize=(16,12))
plt.xlabel("Array Size $N^3$")
plt.ylabel('Bandwidth GB/s')
plt.title("neoSYCL vs VEO on vector add")
plt.legend()
plt.show()

import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.pyplot import figure
df = pd.read_excel("C:\\Users\\lo\\Desktop\\graduate thesis\\midterm\\result.xls","Sheet6")
print(df)
print(df["N"])

plt.rcParams.update({'font.size': 17})
figure(figsize=(10,6))
plt.plot(df["N"],df["bandwidth-o"],label='origin',linewidth=1,color='brown',marker='^',
markerfacecolor='brown',markersize=3)
plt.plot(df["N"],df["bandwidth-a"],label='conflict prevention',linewidth=1,color='seagreen',marker='D',
markerfacecolor='seagreen',markersize=3)
#plt.figure(figsize=(16,12))
plt.xlabel("Array Size $N^3$")
plt.ylabel('Bandwidth GB/s')
plt.title("add ( a[i] += b[i] )")

plt.legend()
plt.show()
#plt.title("copy ( a[i] += R$\cdot$b[i] + c[i]$\cdot$d[i] )")

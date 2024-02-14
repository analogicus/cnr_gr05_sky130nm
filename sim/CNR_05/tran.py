#!/usr/bin/env python3
import pandas as pd
import cicsim as cs
import yaml
import numpy as np
import matplotlib.pyplot as plt


def main(name):
  # Uncomment the following line to disable plotting
  #return

  q = 1.60217662e-19
  K = 1.38064852e-23
  T_0c = 273.15

  dfs = cs.toDataFrames(cs.ngRawRead(name + ".raw"))
  df = dfs[0]


  #df = df.loc[:, ['temp-sweep','i(v.xdut.vtest3)','i(vdd_1v8)']]

  iout = df['i(v.xdut.vtest3)'].values.tolist()
  t1 = df['i(v.xdut.x1.vtest1)'].values.tolist()
  t2 = df['i(v.xdut.x1.vtest2)'].values.tolist()
  iin = df['i(vdd_1v8)'].values.tolist()
  temp = df['temp-sweep'].values.tolist()

  iout_ideal = []
  iout_error = []
  for i in range(len(temp)):
    iout[i] = iout[i]*1e6
    iout_ideal.append((((K*(temp[i]+T_0c)/q)*np.log(8))/4400)*1e6)
    iout_error.append(((iout[i] / iout_ideal[i])-1)*100)

    t1[i] = t1[i]*1e6
    t2[i] = t2[i]*1e6
  
  for i in range(len(iin)):
    iin[i] = -iin[i]*1e6


  fig, axs = plt.subplots(2)
  #fig.figure(figsize=(10, 10))
  fig.suptitle('Iout vs Temp')

  axs[0].set_xlabel('Temp (C)')
  axs[0].set_ylabel('Iout (uA)')
  axs[0].grid(True)

  axs[0].plot(temp, iout, label='Iout_measured', color='blue')
  axs[0].plot(temp, iout_ideal, label='Iout_ideal', color='orange')
  axs[0].legend()

  axs[1].set_xlabel('Temp (C)')
  axs[1].set_ylabel('Iout Error (%)')
  axs[1].grid(True)

  axs[1].plot(temp, iout_error, label='Iout_error', color='red')
  axs[1].legend()
  fig.tight_layout(pad=1.0)

  plt.savefig(name + "_I_out.svg", dpi=300)

  fig2, axs2 = plt.subplots(1)
  fig2.suptitle("Current Consumption")

  axs2.set_xlabel('Temp (C)')
  axs2.set_ylabel('Iin (uA)')
  axs2.grid(True)

  axs2.plot(temp, iin, label='Iin', color='blue')
  axs2.legend()


  plt.savefig(name + "_Current.svg", dpi=300)
  #plt.show()

  fig3, axs3 = plt.subplots(1)
  fig3.suptitle("OTA")

  axs3.set_xlabel('Temp (C)')
  axs3.set_ylabel('Itest (uA)')
  axs3.grid(True)

  axs3.plot(temp, t1, label='I(T1)', color='blue')
  axs3.plot(temp, t2, label='I(T2)', color='orange')
  axs3.legend()

  plt.savefig(name + "_OTA.svg", dpi=300)

  df.to_csv(name + ".csv", index=False)
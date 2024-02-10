import pathlib
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import cicsim as cs
import randomcolor

q = 1.60217662e-19
K = 1.38064852e-23
T_0c = 273.15

first_file = True

def find_files():
    return sorted(pathlib.Path('output_tran').glob('*.raw'))

def plot_files():
    #file = find_files()[0]
    for file in find_files():
        print(file)
        dfs = cs.toDataFrames(cs.ngRawRead(file))
        df = dfs[0]

        iout = df['i(v.xdut.vtest3)'].values.tolist()
        temp = df['temp-sweep'].values.tolist()

        iout_ideal = []
        iout_error = []

        for i in range(len(temp)):
            iout[i] = iout[i]*1e6
            iout_ideal.append((((K*(temp[i]+T_0c)/q)*np.log(8))/4400)*1e6)
            iout_error.append(((iout[i] / iout_ideal[i])-1)*100)

        rand_color = randomcolor.RandomColor()
        color = rand_color.generate()[0]
        print(color)

        axs[0].plot(temp, iout, label='Iout_measured', color=color)
        #axs[0].legend()

        axs[1].plot(temp, iout_error, label='Iout_error', color=color)
        #axs[1].legend()

        global first_file
        if first_file:
            axs[0].plot(temp, iout_ideal, label='Iout_ideal', color="red")
            first_file = False





fig, axs = plt.subplots(2)
fig.suptitle('Iout vs Temp')

axs[0].set_xlabel('Temp (C)')
axs[0].set_ylabel('Iout (uA)')
axs[0].grid(True)

axs[1].set_xlabel('Temp (C)')
axs[1].set_ylabel('Iout Error (%)')
axs[1].grid(True)

fig.tight_layout(pad=1.0)
axs[0].legend()
plot_files()

fig.savefig('combined_plot.svg')


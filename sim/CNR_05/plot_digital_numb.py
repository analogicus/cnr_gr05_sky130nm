import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from bitstring import BitArray
import pathlib
import sys

####################################################################################################
#
# This script is used to plot the digital number of the output of the simulation
#
####################################################################################################

####################################################################################################
#
# Getting the directory
#
####################################################################################################

def find_output_dirs():
    return sorted(pathlib.Path('').glob('output_*'))

def choose_output_dir():
    dirs = find_output_dirs()
    if(len(dirs) == 0):
        print("No output directories found")
        sys.exit()
    elif(len(dirs) == 1):
        print("Only one output directory found")
        print("Plotting from:",dirs[0],"\n")
        return dirs[0]
    print("Checking for output directorys")
    print("Enter the number of the output directory to plot from")
    for i in range(len(dirs)):
        print(str(i)+":",dirs[i])
    while True:
        try:
            dir_num = int(input("Input: "))
            dirs_to_plot = (dirs[dir_num])
            break
        except:
            print("Invalid input")
    
    print("Plotting:",dirs_to_plot,"\n")
    return dirs_to_plot

file_dir = choose_output_dir()

####################################################################################################
#
# Getting the file
#
####################################################################################################
def find_files(dir):
    return sorted(pathlib.Path(dir).glob('*.csv'))

def choose_file(dir):
    files = find_files(dir)
    if(len(files) == 0):
        print("No files found in output directory")
        sys.exit()
    elif(len(files) == 1):
        print("Only one file found in output directory")
        print("Using:",str(files)," \n")
        print("file is", type(files))
        return files
    print("Checking files in output_tran directory")
    print("Enter the number of the file to plot")
    for i in range(len(files)):
        print(str(i)+":",files[i])
    files_to_plot = ""
    while True:
        file_num = input("Input: ")
        if(file_num == "all"):
            for file in files:
                files_to_plot = file
            break
        elif(file_num == "done"):
            if files_to_plot == "":
                print("no value selected")
                continue
            break
        elif(file_num == "d"):
            if files_to_plot == "":
                print("no value selected")
                continue
            break
        try:
            file_num = int(file_num)
            files_to_plot= files[file_num]
            break
        except:
            print("Invalid input")
        
    print("Using:",files_to_plot)
    print("file is", type(files_to_plot))
    print("")
    return str(files_to_plot)

file_to_use = str(choose_file(file_dir)).strip("[").strip("']")
####################################################################################################
#
# Getting the digital number
#
####################################################################################################

#file = 'output_time/time_SchGtKttTtVt.csv'

file1 = open(file_to_use, 'r')
Lines = file1.readline().split(',')
for i in range(0, len(Lines)):
    print(str(i) + ':' + Lines[i])

coluns = []
while True:
    file_num = input("Input: ").split(":")

    if(file_num[0] == "done"):
        if len(coluns) == 0:
            print("no value selected")
            continue
        break
    elif(file_num[0] == "d"):
        if len(coluns) == 0:
            print("no value selected")
            continue
        break
    try:
        if(len(file_num) == 1):
            coluns.append(int(file_num[0]))
        elif(len(file_num) == 2):
            print("Using collumns:",file_num[0],"to",file_num[1])
            for i in range(int(file_num[0]), int(file_num[1])+1):
                coluns.append(i)
        else:
            print("Invalid input")
    except:
        print("Invalid input")
    
for i in range(len(coluns)):
    print("Using collumns:",coluns[i])
print("")

data = np.loadtxt(file_to_use, skiprows=1, delimiter=',', usecols=coluns, unpack=True)
for i in range(len(data)):
    for j in range(len(data[i])):
        if(data[i][j] < 0.1):
            data[i][j] = 1
        else:
            data[i][j] = 0
num = []
for i in range(len(data[0])):
    binary = ''
    for j in reversed(range(len(data))):
        binary += str(int(data[j][i]))
    value = BitArray(bin=binary).int
    num.append(value)

old_num = 0
for i in range(len(num)):
    if(num[i] != old_num):
        print(num[i])
        old_num = num[i]
exit()
####################################################################################################
#
# Getting plot trigger
#
####################################################################################################

for i in range(0, len(Lines)):
    print(str(i) + ':' + Lines[i])

trigger = -1
while True:
    file_num = input("Input: ")
    if(file_num == "done"):
        if trigger == -1:
            print("no value selected")
            continue
        break
    elif(file_num == "d"):
        if trigger == -1:
            print("no value selected")
            continue
        break
    try:
        file_num = int(file_num)
        trigger = file_num
        break
    except:
        print("Invalid input")
    
print("Using trigger:",trigger)
print("")

trigger_data = np.loadtxt(file, skiprows=1, delimiter=',', usecols=trigger, unpack=True)
print_output = []
print_added = False
for i in range(len(trigger_data)):
    if(trigger_data[i] < 0.1):
        trigger_data[i] = 0
        print_output.append(False)
        print_added = False
    else:
        trigger_data[i] = 1
        if not print_added:
            print_output.append(True)
            print_added = True
        else:
            print_output.append(False)
    #print(print_output[i])

####################################################################################################
#
# Plotting
#
####################################################################################################
    
for i in range(0, len(Lines)):
    print(str(i) + ':' + Lines[i])

plot_value = -1
while True:
    file_num = input("Input: ")
    if(file_num == "done"):
        if plot_value == -1:
            print("no value selected")
            continue
        break
    elif(file_num == "d"):
        if plot_value == -1:
            print("no value selected")
            continue
        break
    try:
        file_num = int(file_num)
        plot_value = file_num
        break
    except:
        print("Invalid input")
    
print("Using data:",plot_value)
print("")


plot_data = np.loadtxt(file, skiprows=1, delimiter=',', usecols=plot_value, unpack=True)
plot_time = np.loadtxt(file, skiprows=1, delimiter=',', usecols=0, unpack=True)

fig, ax1 = plt.subplots()
fig.suptitle('Temperature output')
ax1.grid(True)
ax1.set_xlabel('Time (s)')
ax1.set_ylabel('Value [v]')
ax1.plot(plot_time, plot_data, label=Lines[plot_value])
ax1.legend(loc='upper right')

for i in range(len(print_output)):
    if(print_output[i]):
        ax1.annotate("T="+str(num[i]), (plot_time[i], plot_data[i]+0.1))

fig.savefig('output_time/plot_digital_number.png')
plt.show()


# last = ""
# for val in num:   
#     if(val != last):
#         print(val)
#         last = val

        
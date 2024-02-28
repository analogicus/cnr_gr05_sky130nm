import sys
import pathlib
import pandas as pd
import cicsim as cs
import matplotlib.pyplot as plt
import randomcolor
import os

show_plots = False
multi_plots = False
save_svg = False
save_png = False

default_title = True
default_ylabel = True

input_title = ""
input_ylabel = ""

start_args = sys.argv
print("="*50)
for i in range(len(start_args)):
    #print("start_args[",i,"]:",start_args[i])
    if "help" in start_args[i]:
        print("Usage: python3 plot.py [show_plots] [multi_plots] [title=Title] [ylabel=Ylabel] [.svg] [.png]")
        print("show_plots: Show plots after plotting")
        print("multi_plots: Allow multiple files to be plotted")
        print("title=Title: Set the title of the plot")
        print("ylabel=Ylabel: Set the y axis label of the plot")
        print(".svg: Save the plot as an svg file")
        print(".png: Save the plot as a png file")
        sys.exit()
    elif "show_plots" in start_args[i]:
        show_plots = True
        print("show_plots set to True")
    elif "multi_plots" in start_args[i]:
        multi_plots = True
        print("multi_plots set to True")
    elif "title=" in start_args[i]:
        input_title = start_args[i].replace("title=","")
        default_title = False
        print("title set to",input_title)
    elif "ylabel=" in start_args[i]:
        input_ylabel = start_args[i].replace("ylabel=","")
        default_ylabel = False
        print("ylabel set to",input_ylabel)
    elif ".svg" in start_args[i]:
        save_svg = True
        print("Saving as svg")
    elif ".png" in start_args[i]:
        save_png = True
        print("Saving as png")
    elif "plot.py" in start_args[i]:
        print("")
    else:
        print("Invalid argument:",start_args[i])
print("\n")

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
        print(str(i)+":",find_output_dirs()[i])
    while True:
        try:
            dir_num = int(input("Input: "))
            dirs_to_plot = (dirs[dir_num])
            break
        except:
            print("Invalid input")
    
    print("Plotting:",dirs_to_plot,"\n")
    return dirs_to_plot

def find_files(dir):
    return sorted(pathlib.Path(dir).glob('*.raw'))

def choose_file(dir):
    files = find_files(dir)
    if(len(files) == 0):
        print("No files found in output directory")
        sys.exit()
    elif(len(files) == 1):
        print("Only one file found in output directory")
        print("Plotting:",files[0]," \n")
        return files
    print("Checking files in output_tran directory")
    print("Enter the number of the file to plot")
    if(multi_plots):
        print("Enter 'done' when finished")
    for i in range(len(files)):
        print(str(i)+":",files[i])
    files_to_plot = []
    while True:
        file_num = input("Input: ")
        if(file_num == "all"):
            for file in files:
                files_to_plot.append(file)
            break
        elif(file_num == "done"):
            break
        elif(file_num == "d"):
            break
        try:
            file_num = int(file_num)
            files_to_plot.append(files[file_num])
        except:
            print("Invalid input")
        if( not multi_plots):
            break
    for i in range(len(files_to_plot)):
        print("Plotting:",files_to_plot[i])
    print("")
    return files_to_plot

def choose_variable(df):
    if(multi_plots):
        print("Assuming the same variable is plotted for all files")
        print("If unsure, run \"make clean\" and re-run the simulation")
    print("Variables in the file:")
    columns = df.columns.tolist()
    for i in range(len(columns)):
        print(str(i)+":",columns[i])
    print("Enter a number to plot the value")
    print("Enter a number and a scale factor to plot the value scaled by the factor")
    print("Example: 0,1.5 will plot the first value scaled by 1.5")
    print("Example: 0 will plot the first value unscaled")
    print("Enter 'done' when finished")
    columns_to_print = []
    column_scale = []
    while True:
        column_num = input("Input: ").split(",")
        try:
            if len(column_num) == 1:
                column_num = column_num[0]
                if column_num == "done":
                    break
                elif column_num == "d":
                    break
                else:
                    columns_to_print.append(columns[int(column_num)])
                    column_scale.append(1)
            elif len(column_num) == 2:
                scale = float(column_num[1])
                columns_to_print.append(columns[int(column_num[0])])
                column_scale.append(scale)
            else:
                print("Invalid input")
        except:
            print("Invalid input")
    print("Plotting columns:")
    for var in columns_to_print:
        print(" - ",var)
    return columns_to_print,column_scale

def plot_files(files, variables, scale, dir):
    for i in range(len(variables)):
        #print("ploting var :", variables[i])
        fig, ax = plt.subplots(1)
        fig.tight_layout(pad=5.0)
        if(default_title):
            if("output_tran" in str(dir)):
                fig.suptitle(variables[i] + " vs Temp \n" + " scaled by " + str(scale[i]))
            elif("output_time" in str(dir)):
                fig.suptitle(variables[i] + " vs Time \n" + " scaled by " + str(scale[i]))
        else:
            fig.suptitle(input_title)
        if(default_ylabel):
            ax.set_ylabel(variables[i])
        else:
            ax.set_ylabel(input_ylabel)
        if( "output_tran" in str(dir) ):
            ax.set_xlabel('Temp (C)')
        elif( "output_time" in str(dir) ):
            ax.set_xlabel('Time (s)')
        ax.grid(True)
        for file in files:
            #print("Ploting from file :", file)
            #print("scaling width :", scale[i])
            dfs = cs.toDataFrames(cs.ngRawRead(file))
            df = dfs[0]

            value = df[variables[i]].values.tolist()
            temp = df[df.columns[0]].values.tolist()

            for x in range(len(value)):
                value[x] = value[x]*scale[i]

            rand_color = randomcolor.RandomColor()
            color = rand_color.generate()[0]

            dir_path = str(dir) + "/"
            ax.plot(temp, value, label=str(file).replace(dir_path,"").replace(".raw",""), color=color)
            #ax.legend() # Not recommended for multi plots, not nessesary for single plot
            
        if not os.path.exists("plots"):
            os.mkdir("plots")
        
        if(save_svg):
            print("Saving plot as \"plots/"+ str(variables[i]) + "_plot.svg\"")
            fig.savefig("plots/"+ str(variables[i]) + "_plot.svg")
        elif(save_png):
            print("Saving plot as \"plots/"+ str(variables[i]) + "_plot.png\"")
            fig.savefig("plots/"+ str(variables[i]) + "_plot.png")
        else:
            print("No file type selected, not saving fig")

        if(show_plots):
            plt.show()

    
            







dir = choose_output_dir()
files = choose_file(dir)
temp_dfs = cs.toDataFrames(cs.ngRawRead(files[0]))
temp_df = temp_dfs[0]
colums, scale = choose_variable(temp_df)
plot_files(files,colums,scale,dir)

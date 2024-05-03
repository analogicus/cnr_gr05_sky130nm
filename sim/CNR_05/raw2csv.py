import sys
import pathlib
import cicsim as cs

def find_output_dirs():
    return sorted(pathlib.Path('').glob('output_*'))

def choose_output_dir():
    dirs = find_output_dirs()
    if(len(dirs) == 0):
        print("No output directories found")
        sys.exit()
    elif(len(dirs) == 1):
        print("Only one output directory found")
        print("Using:",dirs[0],"\n")
        return dirs[0]
    print("Checking for output directorys")
    print("Enter the number of the output directory to use")
    for i in range(len(dirs)):
        print(str(i)+":",find_output_dirs()[i])
    while True:
        try:
            dir_num = int(input("Input: "))
            dirs_to_plot = (dirs[dir_num])
            break
        except:
            print("Invalid input")
    
    print("using:",dirs_to_plot,"\n")
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
        print("converting:",files[0]," \n")
        return files
    print("Checking files in output_tran directory")
    print("Enter the number of the file to convert")
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
        
    for i in range(len(files_to_plot)):
        print("converting:",files_to_plot[i])
    print("")
    return files_to_plot

dir = choose_output_dir()
files = choose_file(dir)

for file in files:
    #print(file)
    dfs = cs.toDataFrames(cs.ngRawRead(str(file)))
    df = dfs[0]

    name = str(file).split(".")[0]
    df.to_csv(name + ".csv", index=False)
arr = [
    [1,0,0,1,0,1,1,0,0,0],
    [1,0,0,0,1,0,0,0,1,1],
    [1,0,0,0,1,0,1,0,0,0],
    [1,0,0,0,0,0,0,0,1,1],
    [1,0,0,0,0,1,1,1,1,1],
    [1,0,0,0,1,1,1,1,0,0],
    [1,0,0,0,1,0,0,0,0,1],
    [1,0,0,0,0,1,1,1,0,0],
    [1,0,1,0,0,1,0,0,0,1],
]

#101011010


for i in range(len(arr[0])):
    binary = ''
    for j in range(len(arr)):
        binary += str(arr[j][i])
    print("binary:",binary)

for i in range(len(arr[0])):
    for j in range(len(arr)):
        print(arr[j][i], end='')
    print('')
    number = 0
    for j in range(len(arr)-1):
        n = len(arr) -1 - j
        number += arr[n][i]*2**j
    number -= arr[0][i]*2**(len(arr)-1)
    print("number:", number)
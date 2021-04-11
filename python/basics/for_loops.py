# for 

for i in range(10): 
    print(i) # prints 0-9

    # 'i' is being used a the variable to count 
    # in-range is a function that creates a collection bases on the input diven

    # ? range - start, stop, step

    # if only one number is bassed then the defult range is stop (in range(10): )
    # two numbers bassed - start, stop (in range(1,10): )
    # third number - start, stop, step (in range(10, -1, -1): )

    # you can only have 3 parms in 'range' arguments.

x = [0,1,2,3,4,5,6,7,8,9]
    
for i in range(len(x)): 
    print(x[i]) # prints all vaules

# sort of a combination of the 2 forloops above.

for i, element in enumerate(x):
    print(i, element)

# while - runs based on conditions

# while conditon: 
    #do something

i = 0

while i < 10:
    print('i is less than 10')
    i += 1
    if i == 10:
        break

    # prints i 10 times, then when i hits '10' breaks the loop.
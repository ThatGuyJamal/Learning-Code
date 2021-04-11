x = 'jamal'

def func(name):
    x = name 
    return x

print(x)

# the code above will deine x as 'jamal' becuase its outside of thie function scope

# however we can use the 'global' key work (simular to const in js)

 global x # many people dont use it, not a best practice.
# def means define

def func():
    print("Hello world!")


func()


def args(x, y):
    print('Adding:', x, y)  # Adding: 5 5
    return x + y


print('Result:', args(5, 5))  # Result: 10


# multi functions returns

def func(x):
    def func2():
        print(x)

    return func2


print(func(3)())  # None - func2 is being returned and not called


# star args

def func(*args, **kwargs):
    pass


x = [1, 2, 3, 4, 5, 6, 7]

# unpacks x and passes them to the print statment

print(x)  # [1, 2, 3, 4, 5, 6, 7]
print(*x)  # 1 2 3 4 5 6 7

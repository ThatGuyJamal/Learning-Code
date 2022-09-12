x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

m = map(lambda i: i + 2, x)  # maps all elements of x to lambda func of i

print(list(m))  # 2 elements have been added to the list - [17, 18]

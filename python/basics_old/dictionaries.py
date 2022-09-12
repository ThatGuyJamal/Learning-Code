# x = {key" 'value} | key:value pair

x = {'key': 4}

print(x['key'])  # 4

x['key2'] = 5

print(x)  # {'key': 4, 'key2': 5}
print(x['key2'])  # 5

# check if something is in the dic

print('key' in x)  # true

# check all values in dictionary

print(list(x.values()))  # [4, 5]

# delete something from the list
del x['key']
print(x)  # only shows {'key2': 5}

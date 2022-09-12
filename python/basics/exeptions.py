print("Input a pin...")
text_pin = input("PIN: ")
try:
    answer = int(text_pin)
    print("Pin set to ", text_pin)
except:
    print("Invalid PIN, please only use numbers!")
    print("Try making a password")

text_pass = input("Password: ")

try:
    pass_check = str(text_pass)
except:
    print("Invalid password, Try again!")

# basically a try catch like javascript.

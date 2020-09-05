a = 0
b = 1

while a <= 144:
    old_a = a
    a = b
    b = old_a + b
    print(b)

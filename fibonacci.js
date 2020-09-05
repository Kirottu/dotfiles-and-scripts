var a = 0
var b = 1

while (a <= 144)
{
    var old_a = a
    a = b
    b = old_a + b
    print(b)
}

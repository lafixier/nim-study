proc fizzbuzz(n: int) =
    for i in countup(1, n):
        if i mod 15 == 0:
            echo "Fizz Buzz"
        elif i mod 3 == 0:
            echo "Fizz"
        elif i mod 5 == 0:
            echo "Buzz"
        else:
            echo i

fizzbuzz(100)


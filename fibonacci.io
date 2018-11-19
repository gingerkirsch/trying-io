"---------Fibonacci---------" println
fib := method(n,
    if( 
        n < 3,
        return(1)
    )
    a := 1
    b := 1
    for (i, 3, n, 1,
        temp := a + b
        a = b
        b = temp
    )
    return(b)
)

for (i, 1, 8, 1, fib(i) println)

"---Fibonacci Recursive---" println
fibRec := method(n,
    step := method(a, b, depth,
        if (
            depth == n,
            return b
        ) else (
            return step(b, a + b, depth + 1)
        )
    )
    return step(0,1,1)
)

for (i, 1, 8, 1, fibRec(i) println)

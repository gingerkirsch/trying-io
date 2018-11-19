sumArray := method(a, 
    if (
        a size == 0,
        return nil
    )
    sum := 0
    a flatten foreach(i, v,
        sum = sum + v
    )
)

array := list(list(2,2,2),list(3,1,2))
sumArray(array) println
sumArray(list()) println

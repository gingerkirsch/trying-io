List myAverage := method(
    if (
        self size == 0,
        return nil
    ) else (
        sum := 0
        self flatten foreach(i, v,
            if (v type != "Number") then (
                Exception raise(
                    "Not a Number",
                    "Array is not homogeneous"
                )
            ) else(sum = sum + v)
        )
    )
    return sum / self size
)

array := list(list(2,2,2),list(3,2,1))
array myAverage println
list(1, "heterogeneous") myAverage println

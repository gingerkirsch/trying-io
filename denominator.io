division := Number getSlot("/")
Number / := method(i,
    if (
        i == 0,
        return 0
    ) else (
        return division(i)
    )
)

(20 / 10) println
(20 / 0) println

secret := Random value(1,100) floor
attempts := 0
while (attempts <= 10,
    guess := File standardInput readLine("Try to guess: ") asNumber() 
    if (guess < secret) then (
        "More..." println
        attempts = attempts + 1
    )
    if (guess > secret) then (
        "Less..." println
        attempts = attempts + 1
    )
    if (guess == secret) then (
        "Hit!" println
        break
    )
)
if (attempts > 10) then ("No more attempts :( number value was:" + secret println)
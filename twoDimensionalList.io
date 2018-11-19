twoDimensionalList := List clone do(
    dim := method(x,y,
        self setSize(x)
        self foreach(i,v,
            self atPut(i, (list() setSize(y)))
        )
        return self
    )
    set := method(x,y,value,
        self at(x) atPut(y, value)
        return self
    )
    get := method(x,y,
        return self at(x) at(y)
    )
    print := method(
        self foreach(i,l,
            l foreach(j,v,
               (v .. "  ") print
            )
            "\n" print
        )
    )
    transpose := method(
        temp := twoDimensionalList clone
        temp dim(self at(0) size, self size)
        temp foreach(i,l,
            l foreach(j,v,
                temp set(i,j, self get(j,i))
            )
        )
        return temp
    )
    writeToFile := method(name, 
        f := File with(name) remove openForUpdating
        self foreach(i,l,
            l foreach(j,v,
               f write (v .. " ")
            )
            f write ("\n")
        )
        f close 
    )
    readFromFile := method(name,
        temp := twoDimensionalList clone
        f := File with(name)
        ary := f readLines map(split)
        temp dim(ary size, ary at(0) size)
        temp foreach(i,l,
            l foreach(j,v,
                temp set(i,j, ary at(i) at(j))
            )
        )
        f close
        return temp
    )
)

test := twoDimensionalList dim(3,2)
test println
test set(0,0,1)
test set(0,1,2)
test set(1,0,3)
test set(1,1,4)
test set(2,0,5)
test set(2,1,6)
"------Matrix------" println
test println
"-----Transposed-----" println
test transpose println
"------Save to File------" println
test writeToFile("matrix.txt")
"Saved !" println
"------Read from File-----" println
test readFromFile("matrix.txt") println


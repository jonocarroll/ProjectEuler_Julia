## The Fibonacci sequence is defined by the recurrence relation:
## Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
## Hence the first 12 terms will be:
## F1 = 1
## F2 = 1
## F3 = 2
## F4 = 3
## F5 = 5
## F6 = 8
## F7 = 13
## F8 = 21
## F9 = 34
## F10 = 55
## F11 = 89
## F12 = 144
## The 12th term, F12, is the first term to contain three digits.
## What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

## check original statement
# function Fibonacci(n::Int)
#     n > 0 || throw(BoundsError(n))
#     n > 2 || return(1)
#     return(Fibonacci(n-1) + Fibonacci(n-2))
# end
# Fibonacci(12)

fib = map(BigInt, [1, 1, 2])
for i in 4:10000
    append!(fib, fib[i-1,1] + fib[i-2,1])
    if ndigits(fib[end,1]) > 1000
        println("i = $(i), sum = $(fib[end,1]), n = $(ndigits(fib[end,1]))")
        break
    end
end

## 4787

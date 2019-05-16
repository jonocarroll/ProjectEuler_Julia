## Let d(n) be defined as the sum of proper divisors of n
## (numbers less than n which divide evenly into n).
## If d(a) = b and d(b) = a, where a ≠ b, then a and b are an
## amicable pair and each of a and b are called amicable numbers.
## For example, the proper divisors of 220 are
## 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore
## d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
## Evaluate the sum of all the amicable numbers under 10000.

## check original statement
using Primes

function properdivisors(n::T) where T<:Integer
    0 < n || throw(ArgumentError("number to be factored must be ≥ 0, got $n"))
    1 < n || return T[one(T)]
    !isprime(n) || return T[one(T), n]
    f = factor(n)
    d = T[one(T)]
    for (k, v) in f
        c = T[k^i for i in 0:v]
        d = d*c'
        d = reshape(d, length(d))
    end
    sort!(d)
    return d[1:end-1]
end

properdivisors(220) |> sum
properdivisors(284) |> sum

## expand to all numbers under 10_000
rng = collect(1:300)
divs = collect(properdivisors(i) |> sum for i in rng)

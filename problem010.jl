## The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
## Find the sum of all the primes below two million.

## check original statement
using Primes
map(primes, 10) |> sum

## expand to 2e6
map(primes, Int64(2e6)) |> sum

## 142913828922

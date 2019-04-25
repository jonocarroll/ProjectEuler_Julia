## The following iterative sequence is defined for the set of positive integers:
## n → n/2 (n is even)
## n → 3n + 1 (n is odd)
## Using the rule above and starting with 13, we generate the following sequence:
## 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
## It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
## Although it has not been proved yet (Collatz Problem), it is thought that all
## starting numbers finish at 1.
## Which starting number, under one million, produces the longest chain?
## NOTE: Once the chain starts the terms are allowed to go above one million.

function collatz(n::Int, i::Int = 1)
    if n == 1
        return((1, i))
    elseif iseven(n)
        # print("$(n) -> ")
        collatz(Int64(n / 2), i + 1)
    else
        # print("$(n) -> ")
        collatz(3n + 1, i + 1)
    end
end

collatz(13)

max_steps = 0
which_max = 0
for it in 1:1000_000
    global max_steps
    global which_max
    c = collatz(it)[2]
    if (c > max_steps)
        max_steps = c
        which_max = it
    end
end
println("max_steps = $(max_steps), it = $(which_max)")

## 837799

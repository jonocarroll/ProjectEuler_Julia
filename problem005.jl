## 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
## What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

## check original statement
for n in 1:prod(1:10)
    if all([n % i == 0 for i in 1:10])
        println("n: ", n)
        break
    end
end
#all([2520 % i == 0 for i in 1:10])

## expand to 1:20
for n in 20:20:prod(1:20)
        if all([n % i == 0 for i in 1:20])
        println("n: ", n)
        break
    end
end

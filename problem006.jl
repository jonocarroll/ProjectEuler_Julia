## The sum of the squares of the first ten natural numbers is,
## 1² + 2² + ... + 10² = 385
## The square of the sum of the first ten natural numbers is,
## (1 + 2 + ... + 10)² = 55² = 3025
## Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
## Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
sumsq = sum([i^2 for i in 1:10])
sqsum = sum(1:10).^2
sqsum - sumsq

## expand to 100
sumsq = sum([i^2 for i in 1:100])
sqsum = sum(1:100).^2
sqsum - sumsq

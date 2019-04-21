## A palindromic number reads the same both ways. The largest palindrome made
## from the product of two 2-digit numbers is 9009 = 91 × 99.
## Find the largest palindrome made from the product of two 3-digit numbers.

## check original statement
twodigits = 1:99
a = [x*y for x in twodigits, y in twodigits]
s = string.(a)
rev_s = reverse.(s)
palindromes = rev_s .== s

vals, inds = findmax(a .* palindromes)
vals
inds

## expand to 3 digits
threedigits = 1:999
a = [x*y for x in threedigits, y in threedigits]
s = string.(a)
rev_s = reverse.(s)
palindromes = rev_s .== s

vals, inds = findmax(a .* palindromes)
vals
inds

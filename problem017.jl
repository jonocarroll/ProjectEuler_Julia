## If the numbers 1 to 5 are written out in words: one, two, three, four, five,
## then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
## If all the numbers from 1 to 1000 (one thousand) inclusive were written out in
## words, how many letters would be used?
## NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
## forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters.
## The use of "and" when writing out numbers is in compliance with British usage.

## check the original statement
smalls = Dict(
        0 => "",
        1 => "one",
        2 => "two",
        3 => "three",
        4 => "four",
        5 => "five",
        6 => "six",
        7 => "seven",
        8 => "eight",
        9 => "nine",
        10 => "ten",
        11 => "eleven",
        12 => "twelve",
        13 => "thirteen",
        14 => "fourteen",
        15 => "fifteen",
        16 => "sixteen",
        17 => "seventeen",
        18 => "eighteen",
        19 => "nineteen")

tens = Dict(20 => "twenty",
        30 => "thirty",
        40 => "fourty",
        50 => "fifty",
        60 => "sixty",
        70 => "seventy",
        80 => "eighty",
        90 => "ninety")

length.(collect(values([smalls[i] for i in 1:5]))) |> sum

## expand to 1000
## one to nineteen
sub20 = [smalls[i] for i in 1:19]

## twenties
tens[20] .* [smalls[i] for i in 1:9]

## 20 to 99
most = [tens[i] .* smalls[j] for i in 20:10:90, j in 0:9]

## include 100 and join all
allnums = sub20
append!(allnums, most)

## append!(sub100, ["one hundred"])

## above one hundred
# allnums = sub100
# append!(allnums, ["one hundred"])

rem = reshape([smalls[i] .* " hundred and" for i in 1:9] .* reshape(sub100, 1, 99), 99*9, 1)[:,1]
append!(allnums, rem)
append!(allnums, [smalls[i] .* "hundred" for i in 1:9])
append!(allnums, ["one thousand"])

## remove whitespace
allnumsnowhitespace = map(x -> replace(x, " " => ""), allnums)

length.(allnumsnowhitespace) |> sum

## 21224

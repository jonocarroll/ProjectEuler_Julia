## 2¹⁵ = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
## What is the sum of the digits of the number 2¹⁰⁰⁰?

## check original statement
2^15
digits(2^15) |> sum

## expand to 2¹⁰⁰⁰
digits(BigInt(2)^1000) |> sum

## 1366

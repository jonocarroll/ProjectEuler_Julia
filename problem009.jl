## A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
## a² + b² = c²
## For example, 3² + 4² = 9 + 16 = 25 = 5².
## There exists exactly one Pythagorean triplet for which a + b + c = 1000.
## Find the product abc.

## check original statement
3^2 + 4^ 2 == 5^2

## find the triplet
using JuMP
using GLPK

m = Model(with_optimizer(GLPK.Optimizer))
@variable(m, x, Int)
@variable(m, y, Int)
@variable(m, z, Int)
@constraint(m, x + y + z == 12)
@constraint(m, 0 <= x)
@constraint(m, 0 <= y)
@constraint(m, 0 <= z)
@objective(m, Min, x*x + y*y - z*z)

status = optimize!(m)

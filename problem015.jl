## Starting in the top left corner of a 2×2 grid, and only being able to move
## to the right and down, there are exactly 6 routes to the bottom right corner.
## How many such routes are there through a 20×20 grid?

r = (1, 0)
d = (0, 1)
z = (0, 0)
x = [z]
y = z


while !all(map(i -> y[i][end, 1] == 2 & y[i][end, 2] == 2, 1:length(y)))
   for v in 1:length(y)
     ynew = y[v, end] .+ r
     if ynew[1] < 3 & ynew[2] < 3
       y[v, end] = ynew
     end
   end
end

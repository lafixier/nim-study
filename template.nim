template `<-` (a, b: untyped): untyped = a <= b
template `>-` (a, b: untyped): untyped = a >= b

assert ((0 <- 1) == (0 <= 1))
assert ((1 <- 0) == (1 <= 0))
assert ((0 >- 1) == (0 >= 1))
assert ((1 >- 0) == (1 >= 0))

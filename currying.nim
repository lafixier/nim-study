proc add(x: int, y: int): int =
  return x + y

proc curriedAdd(x: int): proc(y: int): int =
  return proc(y: int): int = x + y

let add1 = curriedAdd(1)

proc calc(f: proc(x: int, y: int): int): int =
  return f(1, 2)

proc getAddFunc(): proc(x: int, y: int): int =
  return proc(x: int, y: int): int = x + y # return add

echo add(1, 2)
echo curriedAdd(1)(2)
echo add1(2)
echo calc(add)
echo calc(proc(x: int, y: int): int = x + y)
echo getAddFunc()(1, 2)

proc swapTwoVars[T](x: T, y: T): array[2, T] =
  let tmp = x
  let x = y
  let y = tmp
  return [x, y]

echo swapTwoVars(1, 2)

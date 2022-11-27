proc swapTwoVars[T](x: T, y: T): array[2, T] =
  let tmp = x
  let x = y
  let y = tmp
  return [x, y]

echo swapTwoVars(1, 2)
echo swapTwoVars[int](1, 2)
echo swapTwoVars("a", "b")
echo swapTwoVars[string]("a", "b")

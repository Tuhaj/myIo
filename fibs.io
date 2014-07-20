Builder := Object clone

Builder recurrentFibs := method(n,
  if (n == 1, return 1,
    if (n == 2, return 1, return fibs(n - 2) + fibs(n - 1))
  )
)
Builder fibs := list(1, 1)
Builder loopFibs := method(n,
  fibs = list(1,1);
  if (n == 1, return fibs at(0),
    if (n == 2, return fibs at(1), for(i, 0, n-3, fibs append(fibs at(-1) + fibs at(-2))); return fibs at(-1))
  )
)

# http://forum.nim-lang.org/t/1938/1
type Pair = tuple
  one, two: int

type ApplyPair = proc(x: var Pair, y: Pair) {.closure.}

var list: seq[Pair] = @[(1, 2), (3, 4), (5, 6)]

proc modify(x: var Pair, y: Pair, f: ApplyPair) =
  f(x, y)

proc addPair(a: var Pair, b: Pair) =
  a.one = a.one + b.one
  a.two = a.two + b.two

for i in high(list).countdown(0):
  var pair = addr(list[i]) # use addr for efficiency
  pair[].modify(Pair((1, -1)), addPair)

when isMainModule:
  assert ($list == $(@[(2, 1), (4, 3), (6, 5)]))

# Ruby style `times`
# http://forum.nim-lang.org/t/1940
template times(x: expr, body: stmt): stmt =
  for i in 1..x:
    body


when isMainModule:
  var num = 0
  5.times: num += 1
  assert(5 == num)
  echo "count til 5"

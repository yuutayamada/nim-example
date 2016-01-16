# Package

version       = "0.1.0"
author        = "Yuta Yamada"
description   = "nim\'s examples"
license       = "MIT"

# Dependencies

requires "nim >= 0.12.1"

task tests, "test my examples":
  exec "nim c -r --nimcache:./nimcache ./examples/*.nim"
  echo "All tests are done."

# Local Variables:
# mode: nim
# flycheck-mode: nil
# End:
